"""Generate the Canadian-French PDMPublisher DocFX source tree.

Requires Argos Translate and its English-to-French model. The generator protects
Markdown structure, links, code, product names, and bold UI labels so the French
edition can be regenerated when the English documentation changes.
"""

from __future__ import annotations

import re
import shutil
import json
from pathlib import Path

from argostranslate import translate


ROOT = Path(__file__).resolve().parents[1]
SOURCE_SITE = ROOT / "pdmpublisher-site"
SOURCE_ARTICLES = ROOT / "src"
TARGET_SITE = ROOT / "pdmpublisher-site-fr-ca"
TARGET_ARTICLES = ROOT / "src-fr-ca"

DO_NOT_TRANSLATE = {
    "PDMPublisher",
    "PDMDeploy",
    "SOLIDWORKS",
    "SOLIDWORKS PDM Professional",
    "PDM Professional",
    "Blue Byte Systems Inc.",
    "WebView2",
    "eDrawings",
    "SQL Server",
    "Microsoft Excel",
    "Microsoft Print to PDF",
    "PDF",
    "DXF",
    "DWG",
    "STEP",
    "IGES",
    "Parasolid",
    "STL",
    "HTML",
    "CSV",
    "JSON",
    "XML",
    "ZIP",
    "Save As New",
    "Property Doctor",
    "Clone Tree",
    "Add-Ins",
    "CommandManager",
    "BOM Manager",
    "ERP Sync",
    "Publisher Macros",
}

CANADIAN_TERMS = {
    "file name": "nom de fichier",
    "filename": "nom de fichier",
    "folder": "dossier",
    "check box": "case à cocher",
    "checkbox": "case à cocher",
    "drop-down": "liste déroulante",
    "dropdown": "liste déroulante",
    "task pane": "volet des tâches",
    "add-in": "complément",
    "license": "licence",
}

FRENCH_CORRECTIONS = {
    "SOLIDWORKS Ajouter": "Complément SOLIDWORKS",
    "Ajouter SOLIDWORKS": "Complément SOLIDWORKS",
    "SOLIDWORKS complément": "Complément SOLIDWORKS",
    "l'ajout SOLIDWORKS": "le complément SOLIDWORKS",
    "vue voûtée": "vue locale du coffre-fort",
    "un procès de 7 jours": "un essai de 7 jours",
    "Obtenez un procès": "Obtenir un essai",
    "Docteur en propriété": "Property Doctor",
    "l'complément": "le complément",
    "d'complément": "du complément",
    "PDM task": "tâche PDM",
    "PDM Task": "Tâche PDM",
    "la voûte": "le coffre-fort",
    "une voûte": "un coffre-fort",
    "de voûte": "du coffre-fort",
    "porte-sièges": "espaces réservés",
    "porte-siège": "espace réservé",
    "Bille de matériel": "Nomenclature",
    "l'ajout": "le complément",
    "d'ajout": "du complément",
    "Flux de travail et résultats de l'édition": "Flux de travail et résultats de la publication",
    "Registres d'activité des failles": "Journaux d'activité du coffre-fort",
    "Références et variables de la faille": "Références et variables du coffre-fort",
    "Fichiers SQL Query": "Espaces réservés de requête SQL",
    "Référence du titulaire": "Référence des espaces réservés",
    "Conditions Page de travail": "Page de tâche Conditions",
}

TOKEN_RE = re.compile(
    r"```.*?```|`[^`\n]+`|\*\*[^*\n]+\*\*|"
    r"https?://[^\s)>]+|mailto:[^\s)>]+|&[A-Za-z0-9#]+;|"
    r"</?[A-Za-z][^>]*>|\{[^{}\n]+\}|\$\([^\)\n]+\)|%[^%\n]+%",
    re.DOTALL,
)


def translator():
    installed = translate.get_installed_languages()
    english = next((lang for lang in installed if lang.code == "en"), None)
    french = next((lang for lang in installed if lang.code == "fr"), None)
    if not english or not french:
        raise RuntimeError("Install the Argos English-to-French model before running this script.")
    return english.get_translation(french)


def mask(text: str):
    values: list[str] = []

    def save(value: str) -> str:
        values.append(value)
        return f"ZXQ{len(values) - 1:04d}QXZ"

    text = re.sub(
        r"(!?\[[^\]\n]*\]\()([^\)\n]+)(\))",
        lambda match: match.group(1) + save(match.group(2)) + match.group(3),
        text,
    )
    text = TOKEN_RE.sub(lambda match: save(match.group(0)), text)
    for term in sorted(DO_NOT_TRANSLATE, key=len, reverse=True):
        text = re.sub(re.escape(term), lambda match: save(match.group(0)), text, flags=re.I)
    return text, values


def unmask(text: str, values: list[str]) -> str:
    for index in range(len(values) - 1, -1, -1):
        text = text.replace(f"ZXQ{index:04d}QXZ", values[index])
    return text


def translate_text(value: str, engine) -> str:
    if not re.search(r"[A-Za-z]", value):
        return value
    protected, values = mask(value)
    result = engine.translate(protected)
    if any(result.count(f"ZXQ{index:04d}QXZ") != 1 for index in range(len(values))):
        return value
    for english, french in CANADIAN_TERMS.items():
        result = re.sub(rf"\b{re.escape(english)}\b", french, result, flags=re.I)
    result = unmask(result, values)
    for original, replacement in FRENCH_CORRECTIONS.items():
        result = result.replace(original, replacement)
    return result


def translate_line(line: str, engine, in_style: bool) -> str:
    stripped = line.strip()
    if not stripped or in_style:
        return line
    if stripped.startswith(("```", "~~~")):
        return line
    if re.match(r"^\s*(?:href|src|expanded|items):\s*", line):
        return line
    if re.match(r"^\s*[-:| ]+$", line):
        return line
    if re.match(r"^\s*(?:ms\.date|ms\.topic|_layout|uid):\s*", line):
        return line

    yaml_match = re.match(r"^(\s*(?:-\s*)?(?:title|description|name):\s*)(.*?)(\r?\n)?$", line)
    if yaml_match:
        translated = translate_text(yaml_match.group(2), engine)
        if not re.match(r"^\s*-\s*name:", yaml_match.group(1)) and re.search(r"(?:title|description):", yaml_match.group(1)):
            translated = json.dumps(translated, ensure_ascii=False)
        return yaml_match.group(1) + translated + (yaml_match.group(3) or "")

    if "|" in line:
        newline = "\n" if line.endswith("\n") else ""
        body = line[:-1] if newline else line
        cells = body.split("|")
        translated_cells = []
        for cell in cells:
            if re.fullmatch(r"\s*:?-{3,}:?\s*", cell) or not cell.strip():
                translated_cells.append(cell)
                continue
            leading = cell[: len(cell) - len(cell.lstrip())]
            trailing = cell[len(cell.rstrip()) :]
            translated_cells.append(leading + translate_text(cell.strip(), engine) + trailing)
        return "|".join(translated_cells) + newline

    prefix_match = re.match(r"^(\s*(?:#{1,6}\s+|[-*+]\s+|\d+\.\s+|>\s*(?:\[![A-Z ]+\]\s*)?))(.*?)(\r?\n)?$", line)
    if prefix_match:
        return prefix_match.group(1) + translate_text(prefix_match.group(2), engine) + (prefix_match.group(3) or "")

    newline = "\n" if line.endswith("\n") else ""
    body = line[:-1] if newline else line
    return translate_text(body, engine) + newline


def translate_file(source: Path, target: Path, engine) -> None:
    text = source.read_text(encoding="utf-8-sig")
    output: list[str] = []
    in_fence = False
    in_style = False
    for line in text.splitlines(keepends=True):
        stripped = line.strip().lower()
        if stripped.startswith(("```", "~~~")):
            in_fence = not in_fence
            output.append(line)
            continue
        if stripped.startswith("<style"):
            in_style = True
            output.append(line)
            continue
        if stripped.startswith("</style"):
            in_style = False
            output.append(line)
            continue
        output.append(line if in_fence else translate_line(line, engine, in_style))
    target.parent.mkdir(parents=True, exist_ok=True)
    target.write_text("".join(output), encoding="utf-8", newline="\n")


def docfx_anchor(heading: str) -> str:
    heading = re.sub(r"`([^`]*)`", r"\1", heading)
    heading = re.sub(r"\[([^]]+)\]\([^)]*\)", r"\1", heading)
    heading = re.sub(r"<[^>]+>", "", heading)
    heading = heading.lower().strip()
    heading = re.sub(r"[^a-z0-9 _-]", "", heading)
    return re.sub(r"[ _]+", "-", heading).strip("-")


def finalize_file(source: Path, target: Path) -> None:
    source_lines = source.read_text(encoding="utf-8-sig").splitlines()
    target_lines = target.read_text(encoding="utf-8-sig").splitlines()
    if len(source_lines) != len(target_lines):
        raise RuntimeError(f"Line count changed while translating {source}: {len(source_lines)} != {len(target_lines)}")
    output: list[str] = []
    in_fence = False
    for source_line, target_line in zip(source_lines, target_lines):
        if source_line.strip().startswith(("```", "~~~")):
            in_fence = not in_fence
        if not in_fence:
            heading = re.match(r"^#{2,6}\s+(.+?)\s*$", source_line)
            if heading:
                anchor = docfx_anchor(heading.group(1))
                if anchor:
                    output.append(f'<a id="{anchor}"></a>')
        if re.match(r"^(title|description):\s*", target_line):
            key, value = target_line.split(":", 1)
            value = value.strip()
            if not (value.startswith('"') and value.endswith('"')):
                target_line = f"{key}: {json.dumps(value, ensure_ascii=False)}"
        if source_line.lstrip().startswith("![") and target_line.lstrip().startswith("["):
            indentation = target_line[: len(target_line) - len(target_line.lstrip())]
            target_line = indentation + "!" + target_line.lstrip()
        source_image = re.match(r"^(\s*(?:>\s*)?)!\[([^\]]*)\]\(([^)]+)\)\s*$", source_line)
        if source_image and not re.match(r"^\s*(?:>\s*)?!\[[^\]]*\]\([^)]+\)\s*$", target_line):
            normalized_url = re.sub(r"^(?:\.\.)?/images/", "https://pdmpublisher.com/help/images/", source_image.group(3))
            target_line = f"{source_image.group(1)}![{source_image.group(2)}]({normalized_url})"
        output.append(target_line)
    final_text = "\n".join(output) + "\n"
    final_text = re.sub(r"\]\s+\(", "](", final_text)
    final_text = final_text.replace("../images/", "https://pdmpublisher.com/help/images/")
    final_text = re.sub(
        r"(?<!https://pdmpublisher\.com/help)/images/",
        "https://pdmpublisher.com/help/images/",
        final_text,
    )
    final_text = re.sub(
        r"(?m)^(\s*)!?\[([^\]]*)\]\s*\((?:\.\.)?(https://pdmpublisher\.com/help/images/[^)]+)\)\s*$",
        r"\1![\2](\3)",
        final_text,
    )
    for image_url in re.findall(r"!\[[^\]]*\]\(([^)]+)\)", source.read_text(encoding="utf-8-sig")):
        normalized_url = image_url.replace("/images/", "https://pdmpublisher.com/help/images/")
        final_text = re.sub(
            rf"(?<!!)(\[[^\]]*\]\({re.escape(normalized_url)}\))",
            r"!\1",
            final_text,
        )
    final_text = "\n".join(line.rstrip() for line in final_text.splitlines()).rstrip() + "\n"
    target.write_text(final_text, encoding="utf-8", newline="\n")


def recreate_target(path: Path) -> None:
    if path.exists():
        shutil.rmtree(path)
    path.mkdir(parents=True)


def main() -> None:
    engine = translator()
    recreate_target(TARGET_SITE)
    recreate_target(TARGET_ARTICLES)

    site_files = [SOURCE_SITE / "index.md", SOURCE_SITE / "toc.yml", SOURCE_SITE / "src" / "welcome.md", SOURCE_SITE / "src" / "toc.yml"]
    root_names = {
        "introduction.md", "propertiespagepdmpublisher.md", "licensespdmpublisher.md",
        "options.md", "annotations.md", "conditions.md", "conditions_solidworks.md",
        "scheduleditems.md", "changeslog.md", "eula.md", "installingpdmaddins.md",
        "offlineactivator.md", "cdpdm.md", "cdpdmchangeslog.md",
        "updateaddinswithcdpdm.md", "pdmqa.md",
    }
    article_files = [SOURCE_ARTICLES / name for name in sorted(root_names)]
    article_files.extend(sorted(SOURCE_ARTICLES.glob("pdmpublisher*.md")))
    for folder in ("pdmpublisher-options", "pdmpublisher-annotations", "pdmpublisher-conditions"):
        article_files.extend(sorted((SOURCE_ARTICLES / folder).rglob("*.md")))
    article_files = sorted({path for path in article_files if path.exists()})
    article_files = [path for path in article_files if "_noindex: true" not in path.read_text(encoding="utf-8-sig")]

    for source in site_files:
        target = TARGET_SITE / source.relative_to(SOURCE_SITE)
        print(f"Translating {source.relative_to(ROOT)}")
        translate_file(source, target, engine)
        if source.suffix == ".md":
            finalize_file(source, target)

    for source in article_files:
        target = TARGET_ARTICLES / source.relative_to(SOURCE_ARTICLES)
        print(f"Translating {source.relative_to(ROOT)}")
        translate_file(source, target, engine)
        finalize_file(source, target)

    root_toc = TARGET_SITE / "toc.yml"
    root_toc.write_text(
        root_toc.read_text(encoding="utf-8")
        .replace("../src/", "../src-fr-ca/")
        .replace("name: Sommaire", "name: Accueil"),
        encoding="utf-8",
    )
    article_toc = TARGET_SITE / "src" / "toc.yml"
    article_toc.write_text(article_toc.read_text(encoding="utf-8").replace("../../src/", "../../src-fr-ca/"), encoding="utf-8")
    site_index = TARGET_SITE / "index.md"
    site_index.write_text(
        site_index.read_text(encoding="utf-8")
        .replace("../src/", "../src-fr-ca/")
        .replace("../images/", "https://pdmpublisher.com/help/images/"),
        encoding="utf-8",
    )

    print(f"Generated {len(site_files) + len(article_files)} Canadian-French source files.")


if __name__ == "__main__":
    main()
