"""Generate a localized PDMPublisher DocFX source tree.

This extends the original Canadian-French generator for additional Argos
Translate language models while preserving Markdown structure and product names.
"""

from __future__ import annotations

import argparse
from pathlib import Path

from argostranslate import translate

import translate_pdmpublisher_fr_ca as core


LOCALES = {
    "de-DE": {
        "argos_code": "de",
        "site_folder": "pdmpublisher-site-de-de",
        "article_folder": "src-de-de",
        "terms": {
            "file name": "Dateiname",
            "filename": "Dateiname",
            "folder": "Ordner",
            "check box": "Kontrollkaestchen",
            "checkbox": "Kontrollkaestchen",
            "drop-down": "Dropdownliste",
            "dropdown": "Dropdownliste",
            "task pane": "Aufgabenbereich",
            "add-in": "Add-in",
            "license": "Lizenz",
        },
        "corrections": {
            "Eigentumsarzt": "Property Doctor",
            "Klon Baum": "Clone Tree",
            "Speichern wie neu": "Save As New",
        },
        "home_name": "Startseite",
    },
    "pt-BR": {
        "argos_code": "pt",
        "site_folder": "pdmpublisher-site-pt-br",
        "article_folder": "src-pt-br",
        "terms": {
            "file name": "nome do arquivo",
            "filename": "nome do arquivo",
            "folder": "pasta",
            "check box": "caixa de selecao",
            "checkbox": "caixa de selecao",
            "drop-down": "lista suspensa",
            "dropdown": "lista suspensa",
            "task pane": "painel de tarefas",
            "add-in": "suplemento",
            "license": "licenca",
        },
        "corrections": {
            "Doutor de propriedade": "Property Doctor",
            "Arvore de clones": "Clone Tree",
            "Salvar como novo": "Save As New",
        },
        "home_name": "Inicio",
    },
}


def get_translator(target_code: str):
    installed = translate.get_installed_languages()
    english = next((language for language in installed if language.code == "en"), None)
    target = next((language for language in installed if language.code == target_code), None)
    if not english or not target:
        raise RuntimeError(
            f"Install the Argos English-to-{target_code} model before running this script."
        )
    return english.get_translation(target)


def source_files() -> tuple[list[Path], list[Path]]:
    site_files = [
        core.SOURCE_SITE / "index.md",
        core.SOURCE_SITE / "toc.yml",
        core.SOURCE_SITE / "src" / "welcome.md",
        core.SOURCE_SITE / "src" / "toc.yml",
    ]
    root_names = {
        "introduction.md",
        "propertiespagepdmpublisher.md",
        "licensespdmpublisher.md",
        "options.md",
        "annotations.md",
        "conditions.md",
        "conditions_solidworks.md",
        "scheduleditems.md",
        "changeslog.md",
        "eula.md",
        "installingpdmaddins.md",
        "offlineactivator.md",
        "cdpdm.md",
        "cdpdmchangeslog.md",
        "updateaddinswithcdpdm.md",
        "pdmqa.md",
    }
    article_files = [core.SOURCE_ARTICLES / name for name in sorted(root_names)]
    article_files.extend(sorted(core.SOURCE_ARTICLES.glob("pdmpublisher*.md")))
    for folder in (
        "pdmpublisher-options",
        "pdmpublisher-annotations",
        "pdmpublisher-conditions",
    ):
        article_files.extend(sorted((core.SOURCE_ARTICLES / folder).rglob("*.md")))
    article_files = sorted({path for path in article_files if path.exists()})
    article_files = [
        path
        for path in article_files
        if "_noindex: true" not in path.read_text(encoding="utf-8-sig")
    ]
    return site_files, article_files


def generate(locale: str) -> None:
    config = LOCALES[locale]
    target_site = core.ROOT / config["site_folder"]
    target_articles = core.ROOT / config["article_folder"]
    engine = get_translator(config["argos_code"])
    welcome_path = target_site / "addinwelcome.html"
    preserved_welcome = (
        welcome_path.read_text(encoding="utf-8-sig") if welcome_path.exists() else None
    )

    core.CANADIAN_TERMS = config["terms"]
    core.FRENCH_CORRECTIONS = config["corrections"]
    core.recreate_target(target_site)
    core.recreate_target(target_articles)
    if preserved_welcome is not None:
        welcome_path.write_text(preserved_welcome, encoding="utf-8", newline="\n")

    site_files, article_files = source_files()
    for source in site_files:
        target = target_site / source.relative_to(core.SOURCE_SITE)
        print(f"Translating {source.relative_to(core.ROOT)} to {locale}")
        core.translate_file(source, target, engine)
        if source.suffix == ".md":
            core.finalize_file(source, target)

    for source in article_files:
        target = target_articles / source.relative_to(core.SOURCE_ARTICLES)
        print(f"Translating {source.relative_to(core.ROOT)} to {locale}")
        core.translate_file(source, target, engine)
        core.finalize_file(source, target)

    article_folder = config["article_folder"]
    root_toc = target_site / "toc.yml"
    root_toc.write_text(
        root_toc.read_text(encoding="utf-8")
        .replace("../src/", f"../{article_folder}/")
        .replace("name: Summary", f"name: {config['home_name']}"),
        encoding="utf-8",
    )
    article_toc = target_site / "src" / "toc.yml"
    article_toc.write_text(
        article_toc.read_text(encoding="utf-8").replace(
            "../../src/", f"../../{article_folder}/"
        ),
        encoding="utf-8",
    )
    site_index = target_site / "index.md"
    site_index.write_text(
        site_index.read_text(encoding="utf-8")
        .replace("../src/", f"../{article_folder}/")
        .replace("../images/", "https://pdmpublisher.com/help/images/"),
        encoding="utf-8",
    )
    print(f"Generated {len(site_files) + len(article_files)} {locale} source files.")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("locale", choices=sorted(LOCALES))
    args = parser.parse_args()
    generate(args.locale)


if __name__ == "__main__":
    main()
