---
_layout: landing
title: "Principal"
description: "Documentação oficial PDMPublisher para SOLIDWORKS PDM Professional, o suplemento SOLIDWORKS e PDMDeploy."
---

<style>
.pdp-home {
  --pdp-border: #d9e3ec;
  --pdp-soft: #f3f8fc;
  --pdp-muted: var(--bs-secondary-color, #5f6b7a);
  width: 100%;
  max-width: 980px;
  margin: 0 auto;
  padding: 0 24px 56px;
}

[data-bs-theme="dark"] .pdp-home {
  --pdp-border: #344454;
  --pdp-soft: #172a38;
  --pdp-muted: #b8c4d0;
}

.pdp-hero {
  padding: 42px 0 34px;
  text-align: center;
}

.pdp-hero-logo {
  display: block;
  width: min(300px, 82%);
  height: auto;
  margin: 0 auto 22px;
}

.pdp-hero h1 {
  margin: 0 0 10px;
  font-size: 34px;
  line-height: 1.2;
  font-weight: 650;
}

.pdp-hero p {
  max-width: 650px;
  margin: 0 auto;
  color: var(--pdp-muted);
  font-size: 16px;
  line-height: 1.6;
}

.pdp-quick-links {
  display: flex;
  justify-content: center;
  gap: 18px;
  margin-top: 18px;
  flex-wrap: wrap;
}

.pdp-quick-links a {
  color: var(--bs-link-color, #0869b5);
  text-decoration: none !important;
  font-weight: 500;
}

.pdp-quick-links a:hover,
.pdp-quick-links a:focus {
  text-decoration: underline !important;
}

.pdp-section-title {
  margin: 0 0 14px;
  font-size: 18px;
  font-weight: 600;
}

.pdp-docs {
  display: grid;
  grid-template-columns: repeat(3, minmax(0, 1fr));
  gap: 12px;
  margin-bottom: 30px;
}

.pdp-doc {
  padding: 18px;
  border: 1px solid var(--pdp-border);
  border-radius: 8px;
}

.pdp-doc h2 {
  margin: 0 0 7px;
  padding: 0 !important;
  border: 0 !important;
  font-size: 16px;
  font-weight: 600;
}

.pdp-doc p {
  min-height: 66px;
  margin: 0 0 12px;
  color: var(--pdp-muted);
  font-size: 14px;
  line-height: 1.55;
}

.pdp-doc a {
  text-decoration: none !important;
  font-weight: 500;
}

.pdp-support {
  padding: 18px 20px;
  border: 1px solid var(--pdp-border);
  border-left: 3px solid #2f8fd4;
  border-radius: 6px;
  background: var(--pdp-soft);
}

.pdp-support h2 {
  margin: 0 0 6px;
  padding: 0 !important;
  border: 0 !important;
  font-size: 17px;
  font-weight: 600;
}

.pdp-support p {
  margin: 0;
  color: var(--pdp-muted);
  line-height: 1.55;
}

@media (max-width: 760px) {
  .pdp-home {
    padding: 0 16px 42px;
  }

  .pdp-hero h1 {
    font-size: 28px;
  }

  .pdp-docs {
    grid-template-columns: 1fr;
  }

  .pdp-doc p {
    min-height: 0;
  }
}
</style>

<div class="pdp-home">

<section class="pdp-hero">
<img class="pdp-hero-logo" src="https://pdmpublisher.com/help/images/large_logo.png" alt="Blue Byte Systems Inc."/>
<h1>PDMPublisher Centro de Ajuda</h1>
<p>Documentação para o suplemento SOLIDWORKS, tarefa PDM e PDMDeploy.</p>
<div class="pdp-quick-links">
<a href="../src-pt-br/propertiespagepdmpublisher.md">Configurar sua primeira tarefa PDM</a>
<a href="../src-pt-br/pdmpublishertrial.md">Obter uma avaliação de 7 dias</a>
</div>
</section>

<h2 class="pdp-section-title">Documentação</h2>

<section class="pdp-docs">
<div class="pdp-doc">
<h2>PDMPublisher para PDM Professional</h2>
<p>Configure exportações automatizadas, nomes de arquivos, condições, anotações, itens agendados e registros de atividade.</p>
<a href="../src-pt-br/pdmpublisher.md">Documentação aberta &rarr;</a>
</div>

<div class="pdp-doc">
<h2>PDMPublisher para SOLIDWORKS</h2>
<p>Publicar a partir de SOLIDWORKS, criar cópias nativas, gerenciar propriedades, construir pacotes de lançamento e compartilhar configurações reutilizáveis. </p>
<a href="../src-pt-br/pdmpublishersolidworks.md">Documentação aberta &rarr;</a>
</div>

<div class="pdp-doc">
<h2>PDMDeploy</h2>
<p>Instalar e atualizar PDMPublisher em SOLIDWORKS PDM usando o código de ativação público ou privado.</p>
<a href="../src-pt-br/cdpdm.md">Guia de implantação aberto &rarr;</a>
</div>
</section>

<section class="pdp-support">
<h2>PDMPublisher support</h2>
<p>Email <a href="mailto:support@bluebytesystemsinc.zohodesk.com">support@bluebytesystemsinc.zohodesk.com</a> com o registro de tarefas, capturas de tela e uma descrição do problema.</p>
</section>

</div>
