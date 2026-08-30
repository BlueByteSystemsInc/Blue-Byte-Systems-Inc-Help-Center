---
title: PDMPublisher Product Body
description: Embed-only product body for the PDMPublisher SOLIDWORKS PDM product page.
_noindex: true
_embedArticleOnly: true
_disableNavbar: true
_disableToc: true
_disableBreadcrumb: true
_disableAffix: true
_disableContribution: true
_disableNextArticle: true
_enableSearch: false
---

<style>
  @import url("https://cdn.jsdelivr.net/npm/@tabler/icons-webfont@3.46.0/dist/tabler-icons.min.css");

  html,
  body {
    background: #ffffff !important;
    color-scheme: light;
  }

  main.container-xxl {
    margin: 0 !important;
    max-width: none !important;
    padding: 0 !important;
    width: 100% !important;
  }

  main.container-xxl .content {
    max-width: none !important;
    padding: 0 !important;
    width: 100% !important;
  }

  main.container-xxl article[data-uid] {
    background: #ffffff !important;
    color: #172033 !important;
    color-scheme: light;
    margin: 0 !important;
    max-width: none !important;
    padding: 0 !important;
    width: 100% !important;
  }

  .bb-product-body {
    background: #ffffff !important;
    border: 1px solid #dbe3ef;
    border-radius: 8px;
    box-sizing: border-box;
    color: #172033 !important;
    color-scheme: light;
    font-family: "3DS", "3ds", "3DS Regular", Arial, Helvetica, sans-serif;
    line-height: 1.62;
    margin: 0;
    padding: clamp(20px, 4vw, 34px);
  }

  .bb-product-body *,
  .bb-product-body *::before,
  .bb-product-body *::after {
    box-sizing: border-box;
    color-scheme: light;
  }

  .bb-product-body img {
    display: block;
    height: auto;
    max-width: 100%;
  }

  .bb-product-body h1,
  .bb-product-body h2,
  .bb-product-body h3 {
    color: #0f172a !important;
    font-weight: 800;
    letter-spacing: 0;
    line-height: 1.2;
  }

  .bb-product-body h1 {
    font-size: clamp(28px, 3.4vw, 42px);
    margin: 0 0 14px;
  }

  .bb-product-body h2 {
    font-size: 24px;
    margin: 30px 0 12px;
  }

  .bb-product-body h3 {
    font-size: 18px;
    margin: 0 0 8px;
  }

  .bb-product-body p,
  .bb-product-body li {
    color: #334155 !important;
    font-size: 16px;
  }

  .bb-product-body p {
    margin: 0 0 16px;
  }

  .bb-product-body ul {
    display: grid;
    gap: 10px;
    margin: 14px 0 18px;
    padding-left: 22px;
  }

  .bb-product-body a {
    color: #1d4ed8 !important;
    font-weight: 700;
    text-decoration: underline;
    text-underline-offset: 3px;
  }

  .bb-product-body .bb-product-body__intro {
    color: #1e293b !important;
    font-size: 18px;
    max-width: 920px;
  }

  .bb-product-body .bb-product-body__hero {
    display: grid;
    gap: 24px;
    grid-template-columns: minmax(0, 1.05fr) minmax(300px, .95fr);
    margin-bottom: 24px;
  }

  .bb-product-body .bb-product-body__eyebrow {
    color: #2563eb !important;
    font-size: 13px;
    font-weight: 800;
    letter-spacing: .08em;
    margin: 0 0 10px;
    text-transform: uppercase;
  }

  .bb-product-body .bb-product-body__media {
    align-self: start;
    background: #f8fafc !important;
    border: 1px solid #dbe3ef;
    border-radius: 8px;
    overflow: hidden;
  }

  .bb-product-body .bb-product-body__media img {
    width: 100%;
  }

  .bb-product-body .bb-product-body__caption {
    color: #64748b !important;
    font-size: 13px;
    margin: 0;
    padding: 10px 12px;
  }

  .bb-product-body .bb-product-body__grid {
    display: grid;
    gap: 18px;
    grid-template-columns: repeat(2, minmax(0, 1fr));
    margin: 22px 0;
  }

  .bb-product-body .bb-product-body__feature-grid {
    display: grid;
    gap: 14px;
    grid-template-columns: repeat(3, minmax(0, 1fr));
    margin: 20px 0 26px;
  }

  .bb-product-body .bb-product-body__capability-grid {
    display: grid;
    gap: 14px;
    grid-template-columns: repeat(3, minmax(0, 1fr));
    margin: 20px 0 26px;
  }

  .bb-product-body .bb-product-body__panel {
    background: #f8fafc !important;
    border: 1px solid #e2e8f0;
    border-radius: 8px;
    padding: 18px;
  }

  .bb-product-body .bb-product-body__feature {
    background: #ffffff !important;
    border: 1px solid #dbe3ef;
    border-radius: 8px;
    display: block;
    padding: 18px;
    text-decoration: none;
    transition: border-color .15s ease, box-shadow .15s ease, transform .15s ease;
  }

  .bb-product-body .bb-product-body__feature:hover,
  .bb-product-body .bb-product-body__capability:hover {
    border-color: #2563eb;
    box-shadow: 0 10px 24px rgba(37, 99, 235, .12);
    transform: translateY(-1px);
  }

  .bb-product-body .bb-product-body__capability {
    background: #f8fafc !important;
    border: 1px solid #dbe3ef;
    border-radius: 8px;
    display: block;
    padding: 16px;
    text-decoration: none;
    transition: border-color .15s ease, box-shadow .15s ease, transform .15s ease;
  }

  .bb-product-body .bb-product-body__capability h3 {
    font-size: 16px;
    margin: 0 0 7px;
  }

  .bb-product-body .bb-product-body__capability p {
    font-size: 14px;
    line-height: 1.5;
    margin: 0;
  }

  .bb-product-body .bb-product-body__capability-icon {
    align-items: center;
    background: #eff6ff !important;
    border: 1px solid #bfdbfe;
    border-radius: 8px;
    color: #1d4ed8 !important;
    display: inline-flex;
    margin-bottom: 10px;
    height: 38px;
    justify-content: center;
    width: 38px;
  }

  .bb-product-body .bb-product-body__feature-icon {
    align-items: center;
    background: #eff6ff !important;
    border: 1px solid #bfdbfe;
    border-radius: 8px;
    color: #1d4ed8 !important;
    display: inline-flex;
    font-size: 20px;
    font-weight: 800;
    height: 40px;
    justify-content: center;
    margin-bottom: 12px;
    min-width: 40px;
    padding: 0 9px;
  }

  .bb-product-body .bb-product-body__feature-icon i,
  .bb-product-body .bb-product-body__capability-icon i {
    color: #1d4ed8 !important;
    font-size: 21px;
    line-height: 1;
  }

  .bb-product-body .bb-product-body__external {
    align-items: center;
    color: #1d4ed8 !important;
    display: inline-flex;
    font-size: 13px;
    font-weight: 800;
    gap: 5px;
    margin-top: 10px;
    text-decoration: none;
  }

  .bb-product-body .bb-product-body__image-row {
    display: grid;
    gap: 16px;
    grid-template-columns: repeat(2, minmax(0, 1fr));
    margin: 20px 0 26px;
  }

  .bb-product-body .bb-product-body__image-card {
    background: #f8fafc !important;
    border: 1px solid #dbe3ef;
    border-radius: 8px;
    display: block;
    overflow: hidden;
    text-decoration: none;
    transition: border-color .15s ease, box-shadow .15s ease, transform .15s ease;
  }

  .bb-product-body .bb-product-body__image-card:hover {
    border-color: #2563eb;
    box-shadow: 0 10px 24px rgba(37, 99, 235, .12);
    transform: translateY(-1px);
  }

  .bb-product-body .bb-product-body__image-card h3 {
    font-size: 16px;
    margin: 0;
    padding: 14px 14px 0;
  }

  .bb-product-body .bb-product-body__image-card p {
    font-size: 14px;
    margin: 0;
    padding: 8px 14px 14px;
  }

  .bb-product-body .bb-product-body__image-card .bb-product-body__external {
    margin: 0 14px 14px;
  }

  .bb-product-body .bb-product-body__cta-row {
    display: flex;
    flex-wrap: wrap;
    gap: 12px;
    margin-top: 18px;
  }

  .bb-product-body .bb-product-body__button {
    background: #2563eb !important;
    border: 1px solid #2563eb;
    border-radius: 8px;
    color: #ffffff !important;
    display: inline-flex;
    font-weight: 800;
    line-height: 1.2;
    padding: 12px 16px;
    text-decoration: none;
  }

  .bb-product-body .bb-product-body__button--secondary {
    background: #ffffff !important;
    color: #1d4ed8 !important;
  }

  .bb-product-body .bb-product-body__note {
    background: #eff6ff !important;
    border-left: 4px solid #2563eb;
    border-radius: 6px;
    color: #1e3a8a !important;
    margin-top: 22px;
    padding: 16px 18px;
  }

  .bb-product-body .bb-product-body__note p {
    color: #1e3a8a !important;
    margin: 0;
  }

  @media (max-width: 720px) {
    .bb-product-body .bb-product-body__hero,
    .bb-product-body .bb-product-body__grid {
      grid-template-columns: 1fr;
    }

    .bb-product-body .bb-product-body__feature-grid,
    .bb-product-body .bb-product-body__capability-grid,
    .bb-product-body .bb-product-body__image-row {
      grid-template-columns: 1fr;
    }

    .bb-product-body .bb-product-body__button {
      justify-content: center;
      width: 100%;
    }
  }
</style>

<section class="bb-product-body">
  <div class="bb-product-body__hero">
    <div>
      <p class="bb-product-body__eyebrow">SOLIDWORKS PDM Professional task add-in</p>
      <h1>Automated publishing from your PDM vault</h1>
      <p class="bb-product-body__intro">PDMPublisher turns SOLIDWORKS PDM Professional into a controlled publishing system for drawings, models, references, and release packages. Configure the task once, then let users, workflows, or scheduled jobs create consistent downstream deliverables from the vault.</p>
      <p>It is built for teams that need repeatable exports without asking engineers to open files one by one. PDMPublisher can create PDFs, DXFs, STEP files, 3D PDFs, eDrawings files, images, and CAD interchange formats while applying the task rules your PDM administrator defines.</p>
      <div class="bb-product-body__cta-row">
        <a class="bb-product-body__button bb-product-body__button--secondary" href="https://pdmpublisher.com/help/src/pdmpublisher.html" target="_blank" rel="noopener noreferrer">Read the help docs</a>
      </div>
    </div>
    <figure class="bb-product-body__media">
      <img src="https://docs.bluebyte.biz/images/pdmpublisher/screenshots/task-setup-options.png" alt="PDMPublisher task setup options in SOLIDWORKS PDM Professional">
      <figcaption class="bb-product-body__caption">PDMPublisher task settings are configured by administrators inside SOLIDWORKS PDM Professional.</figcaption>
    </figure>
  </div>
  <div class="bb-product-body__grid">
    <section class="bb-product-body__panel">
      <h3>Best fit</h3>
      <p>Use PDMPublisher when publishing should run from SOLIDWORKS PDM Professional: selected vault files, workflow actions, scheduled items, or PDM task execution.</p>
    </section>
    <section class="bb-product-body__panel">
      <h3>Different from the SOLIDWORKS add-in</h3>
      <p>This version stores its settings in a PDM task definition. If users need to publish the document currently open in SOLIDWORKS with reusable profiles, use PDMPublisher for SOLIDWORKS instead.</p>
    </section>
  </div>
  <h2>Feature highlights</h2>
  <div class="bb-product-body__feature-grid">
    <a class="bb-product-body__feature" href="https://pdmpublisher.com/help/src/pdmpublisher-options/file-formats.html" target="_blank" rel="noopener noreferrer" aria-label="Open file formats feature guide in a new tab">
      <span class="bb-product-body__feature-icon" aria-hidden="true"><i class="ti ti-file-stack"></i></span>
      <h3>Multi-format publishing</h3>
      <p>Create production-ready outputs including PDF, DXF, STEP, 3D PDF, eDrawings, image formats, and supported CAD interchange formats from one configured task.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__feature" href="https://pdmpublisher.com/help/src/pdmpublisher-options/use-pdm-search-to-locate-drawings.html" target="_blank" rel="noopener noreferrer" aria-label="Open PDM search feature guide in a new tab">
      <span class="bb-product-body__feature-icon" aria-hidden="true"><i class="ti ti-vault"></i></span>
      <h3>Vault-aware automation</h3>
      <p>Use PDM variables, file cards, workflow context, PDM search, vault paths, permissions, and task logs as part of the publishing process.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__feature" href="https://pdmpublisher.com/help/src/pdmpublisher-options/merge-exported-pdfs.html" target="_blank" rel="noopener noreferrer" aria-label="Open PDF merge feature guide in a new tab">
      <span class="bb-product-body__feature-icon" aria-hidden="true"><i class="ti ti-file-type-pdf"></i></span>
      <h3>Polished PDF packages</h3>
      <p>Merge PDFs, add a table of contents, include bookmarks, control drawing sheets, and apply annotations, watermarks, QR codes, and BOM quantities.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
  </div>
  <div class="bb-product-body__image-row">
    <a class="bb-product-body__image-card" href="https://pdmpublisher.com/help/src/annotations.html" target="_blank" rel="noopener noreferrer" aria-label="Open annotations feature guide in a new tab">
      <img src="https://docs.bluebyte.biz/images/pdmpublisher/screenshots/task-setup-annotations.png" alt="PDMPublisher annotations setup page">
      <h3>Annotate published outputs</h3>
      <p>Add data-card values, custom properties, QR codes, watermarks, and formatted text to exported drawings and PDFs.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__image-card" href="https://pdmpublisher.com/help/src/scheduleditems.html" target="_blank" rel="noopener noreferrer" aria-label="Open scheduled items feature guide in a new tab">
      <img src="https://docs.bluebyte.biz/images/pdmpublisher/screenshots/task-setup-scheduling.png" alt="PDMPublisher scheduled task setup page">
      <h3>Run on your schedule</h3>
      <p>Use scheduled task items and repeatable task definitions for batch publishing, release archives, and routine vault output jobs.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
  </div>
  <h2>Capabilities included</h2>
  <div class="bb-product-body__capability-grid">
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/propertiespagepdmpublisher.html" target="_blank" rel="noopener noreferrer" aria-label="Open task setup feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-settings-automation"></i></span>
      <h3>PDM task setup</h3>
      <p>Create and configure a PDMPublisher task inside SOLIDWORKS PDM Administration for repeatable vault publishing.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/scheduleditems.html" target="_blank" rel="noopener noreferrer" aria-label="Open selected and scheduled files feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-calendar-time"></i></span>
      <h3>Selected or scheduled files</h3>
      <p>Run from selected vault files, scheduled task items, or launch-time file selection when users need to choose files at runtime.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/pdmpublisher-options/file-formats.html" target="_blank" rel="noopener noreferrer" aria-label="Open file formats feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-file-stack"></i></span>
      <h3>Many export formats</h3>
      <p>Create PDF, 3D PDF, DXF, DWG, STEP, IGES, STL, Parasolid, ACIS, eDrawings, images, and other supported outputs.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/pdmpublisher-options/export-location.html" target="_blank" rel="noopener noreferrer" aria-label="Open export location feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-folder-open"></i></span>
      <h3>Vault and network destinations</h3>
      <p>Publish to vault folders, relative paths, UNC locations, external folders, or extension-specific export destinations.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/pdmpublisher-options/filename.html" target="_blank" rel="noopener noreferrer" aria-label="Open filename rules feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-typography"></i></span>
      <h3>Controlled filename rules</h3>
      <p>Build output names from PDM variables, revisions, configurations, drawing sheets, dates, source names, and other placeholders.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/pdmpublisher-options/export-references-individually.html" target="_blank" rel="noopener noreferrer" aria-label="Open reference processing feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-link"></i></span>
      <h3>Reference processing</h3>
      <p>Process assemblies and referenced components individually so release packages can include every required downstream file.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/pdmpublisher-options/use-pdm-search-to-locate-drawings.html" target="_blank" rel="noopener noreferrer" aria-label="Open drawing search feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-vault"></i></span>
      <h3>PDM drawing search</h3>
      <p>Use vault search and where-used context to locate related drawings when models need associated drawing outputs.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/pdmpublisher-options/use-drawing-derived-bom.html" target="_blank" rel="noopener noreferrer" aria-label="Open drawing-derived BOM feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-table"></i></span>
      <h3>Drawing-derived BOMs</h3>
      <p>Use a named BOM saved on an assembly drawing to calculate references, configurations, and quantities for publishing.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/pdmpublisher-options/sheets-to-export.html" target="_blank" rel="noopener noreferrer" aria-label="Open drawing sheet control feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-files"></i></span>
      <h3>Drawing sheet control</h3>
      <p>Export all sheets or only matching sheets, then use sheet-name patterns to keep drawing deliverables clean.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/pdmpublisher-options/convert-multiple-configurations.html" target="_blank" rel="noopener noreferrer" aria-label="Open configuration export feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-adjustments-cog"></i></span>
      <h3>Configuration export</h3>
      <p>Publish multiple part and assembly configurations, include configuration names, and filter which configurations are released.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/pdmpublisher-options/export-sheet-metal-flat-pattern-dxf.html" target="_blank" rel="noopener noreferrer" aria-label="Open flat-pattern DXF feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-vector-bezier"></i></span>
      <h3>Flat-pattern DXF</h3>
      <p>Export sheet-metal flat patterns with manufacturing-friendly DXF settings, bend lines, sketches, and bounding boxes.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/pdmpublisher-options/split-bodies.html" target="_blank" rel="noopener noreferrer" aria-label="Open split-body output feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-layers-intersect"></i></span>
      <h3>Split-body output</h3>
      <p>Support workflows that need separate deliverables for bodies, configurations, or derived model outputs.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/annotations.html" target="_blank" rel="noopener noreferrer" aria-label="Open annotations feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-writing"></i></span>
      <h3>Annotations and watermarks</h3>
      <p>Add fixed text, PDM variables, SOLIDWORKS properties, watermarks, QR codes, and formatted notes to published PDFs.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/conditions.html" target="_blank" rel="noopener noreferrer" aria-label="Open conditions feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-filter"></i></span>
      <h3>Conditional publishing</h3>
      <p>Use condition groups to decide which vault files and references are processed before the task creates outputs.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/pdmpublisher-options/merge-exported-pdfs.html" target="_blank" rel="noopener noreferrer" aria-label="Open merged PDF feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-file-type-pdf"></i></span>
      <h3>PDF packages</h3>
      <p>Merge exported PDFs, add a table of contents, include bookmarks, and produce review-ready drawing packages.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/pdmpublisher-options/archive-all-exported-documents.html" target="_blank" rel="noopener noreferrer" aria-label="Open ZIP archive feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-file-zip"></i></span>
      <h3>ZIP archives</h3>
      <p>Package exported documents into a single ZIP for suppliers, manufacturing, customers, migration jobs, or release bundles.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/pdmpublisher-options/turn-on-activity-tracking.html" target="_blank" rel="noopener noreferrer" aria-label="Open vault activity logs feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-notebook"></i></span>
      <h3>Vault activity logs</h3>
      <p>Create detailed task logs in the vault so administrators can review successful exports, warnings, failures, and paths.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/pdmpublisher-options/server-synced-activity-logs.html" target="_blank" rel="noopener noreferrer" aria-label="Open server-synced logs feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-cloud-upload"></i></span>
      <h3>Server-synced logs</h3>
      <p>Send activity logs to the server when support visibility and centralized troubleshooting records are needed.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/pdmpublisher-options/hide-task-in-file-explorer.html" target="_blank" rel="noopener noreferrer" aria-label="Open task visibility feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-eye-off"></i></span>
      <h3>Task visibility control</h3>
      <p>Hide task commands from File Explorer when publishing should be launched only by administrators, workflows, or schedules.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/pdmpublisher-options/use-this-version-of-solidworks.html" target="_blank" rel="noopener noreferrer" aria-label="Open SOLIDWORKS version feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-3d-cube-sphere"></i></span>
      <h3>SOLIDWORKS version control</h3>
      <p>Choose which installed SOLIDWORKS version the PDM task host should use when publishing CAD files.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/pdmpublisher_task_details.html" target="_blank" rel="noopener noreferrer" aria-label="Open task details log feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-list-details"></i></span>
      <h3>Task details review</h3>
      <p>Review successful converted files and task details so vault users can understand what the task generated.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
  </div>
  <h2>Use it for</h2>
  <ul>
    <li>Publish drawings, parts, assemblies, references, and supported Office documents from the vault.</li>
    <li>Create PDFs, DXFs, STEP files, 3D PDFs, eDrawings files, image formats, and CAD interchange outputs.</li>
    <li>Write exports to vault folders, network locations, relative folders, or extension-specific destinations.</li>
    <li>Merge exported PDFs, add a table of contents, include bookmarks, and control drawing sheet output.</li>
    <li>Add annotations, watermarks, QR codes, custom properties, data-card values, and BOM quantities to published PDFs.</li>
    <li>Use conditions, variables, PDM search, file naming rules, logging, and scheduled task items to standardize release workflows.</li>
  </ul>
  <h2>Why teams use it</h2>
  <p>Manual publishing is easy to start but difficult to keep consistent across a busy engineering group. File names drift, folders get missed, drawings are exported with different settings, and released deliverables may not match the source revision. PDMPublisher gives administrators a repeatable publishing layer that follows the way the vault is already organized.</p>
  <p>That makes it useful for manufacturing handoffs, supplier packages, released drawing archives, migration cleanup, customer documentation, and other high-volume publishing workflows where consistency matters more than one-off flexibility.</p>
  <div class="bb-product-body__note">
    <p>Need interactive publishing from inside SOLIDWORKS instead? See <a href="https://bluebyte.biz/product/pdmpublisher-solidworks/" target="_blank" rel="noopener noreferrer">PDMPublisher for SOLIDWORKS</a>.</p>
  </div>
</section>

<script>
  (function () {
    var lastHeight = 0;
    var allowedOrigins = ["https://bluebyte.biz", "https://www.bluebyte.biz"];

    function getTargetOrigin() {
      try {
        var referrerOrigin = new URL(document.referrer).origin;
        return allowedOrigins.indexOf(referrerOrigin) !== -1 ? referrerOrigin : "*";
      } catch (error) {
        return "*";
      }
    }

    function getContentHeight() {
      var body = document.body;
      var html = document.documentElement;
      return Math.ceil(Math.max(
        body ? body.scrollHeight : 0,
        body ? body.offsetHeight : 0,
        html ? html.scrollHeight : 0,
        html ? html.offsetHeight : 0
      )) + 24;
    }

    function sendHeight() {
      var height = getContentHeight();
      if (Math.abs(height - lastHeight) < 2) return;
      lastHeight = height;

      window.parent.postMessage({
        type: "pdmpublisher-height",
        height: height,
        path: window.location.pathname
      }, getTargetOrigin());
    }

    window.addEventListener("load", sendHeight);
    window.addEventListener("resize", sendHeight);

    if (document.fonts && document.fonts.ready) {
      document.fonts.ready.then(sendHeight);
    }

    Array.prototype.forEach.call(document.images, function (image) {
      if (!image.complete) {
        image.addEventListener("load", sendHeight, { once: true });
        image.addEventListener("error", sendHeight, { once: true });
      }
    });

    if ("ResizeObserver" in window) {
      new ResizeObserver(sendHeight).observe(document.body);
    }

    if ("MutationObserver" in window) {
      new MutationObserver(sendHeight).observe(document.body, {
        attributes: true,
        childList: true,
        subtree: true
      });
    }

    sendHeight();
    setTimeout(sendHeight, 250);
    setTimeout(sendHeight, 1000);
  })();
</script>
