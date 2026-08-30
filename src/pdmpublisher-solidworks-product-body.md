---
title: PDMPublisher for SOLIDWORKS Product Body
description: Embed-only product body for the PDMPublisher for SOLIDWORKS product page.
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

  .bb-product-body .bb-product-body__tab-grid {
    display: grid;
    gap: 16px;
    grid-template-columns: repeat(6, minmax(0, 1fr));
    margin: 20px 0 30px;
  }

  .bb-product-body .bb-product-body__tab-card {
    background: #ffffff !important;
    border: 1px solid #dbe3ef;
    border-radius: 8px;
    display: flex;
    flex-direction: column;
    grid-column: span 2;
    min-height: 360px;
    overflow: hidden;
    text-decoration: none;
    transition: border-color .15s ease, box-shadow .15s ease, transform .15s ease;
  }

  .bb-product-body .bb-product-body__tab-card:nth-child(4),
  .bb-product-body .bb-product-body__tab-card:nth-child(5) {
    grid-column: span 3;
  }

  .bb-product-body .bb-product-body__tab-card:hover {
    border-color: #2563eb;
    box-shadow: 0 14px 30px rgba(37, 99, 235, .14);
    transform: translateY(-1px);
  }

  .bb-product-body .bb-product-body__tab-media {
    background: #f8fafc !important;
    border-bottom: 1px solid #e2e8f0;
    min-height: 178px;
    overflow: hidden;
  }

  .bb-product-body .bb-product-body__tab-media img {
    aspect-ratio: 16 / 10;
    object-fit: cover;
    object-position: top left;
    width: 100%;
  }

  .bb-product-body .bb-product-body__tab-content {
    display: flex;
    flex: 1;
    flex-direction: column;
    padding: 18px;
  }

  .bb-product-body .bb-product-body__tab-label {
    align-items: center;
    color: #2563eb !important;
    display: inline-flex;
    font-size: 13px;
    font-weight: 800;
    gap: 7px;
    margin-bottom: 9px;
    text-transform: uppercase;
  }

  .bb-product-body .bb-product-body__tab-label i {
    color: #2563eb !important;
    font-size: 19px;
    line-height: 1;
  }

  .bb-product-body .bb-product-body__tab-card h3 {
    font-size: 20px;
    margin: 0 0 9px;
  }

  .bb-product-body .bb-product-body__tab-card p {
    font-size: 15px;
    margin: 0;
  }

  .bb-product-body .bb-product-body__tab-card .bb-product-body__external {
    margin-top: auto;
    padding-top: 14px;
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
    .bb-product-body .bb-product-body__tab-grid,
    .bb-product-body .bb-product-body__image-row {
      grid-template-columns: 1fr;
    }

    .bb-product-body .bb-product-body__tab-card,
    .bb-product-body .bb-product-body__tab-card:nth-child(4),
    .bb-product-body .bb-product-body__tab-card:nth-child(5) {
      grid-column: auto;
      min-height: 0;
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
      <p class="bb-product-body__eyebrow">SOLIDWORKS task-pane add-in</p>
      <h1>Publish deliverables directly from SOLIDWORKS</h1>
      <p class="bb-product-body__intro">PDMPublisher for SOLIDWORKS gives designers and engineers a publishing workspace inside SOLIDWORKS. Open a drawing, part, or assembly, choose a reusable profile, and publish the deliverables your team needs without rebuilding the export steps by hand.</p>
      <p>This version is built for interactive publishing from the active SOLIDWORKS session. Profiles store output locations, filename rules, formats, reference handling, drawing sheet behavior, annotations, conditions, and other publishing options.</p>
      <div class="bb-product-body__cta-row">
        <a class="bb-product-body__button bb-product-body__button--secondary" href="https://pdmpublisher.com/help/src/pdmpublishersolidworks.html" target="_blank" rel="noopener noreferrer">Read the help docs</a>
      </div>
    </div>
    <figure class="bb-product-body__media">
      <img src="https://docs.bluebyte.biz/images/pdmpublisher/solidworks/overview-20260808.png" alt="PDMPublisher for SOLIDWORKS task pane in SOLIDWORKS">
      <figcaption class="bb-product-body__caption">PDMPublisher for SOLIDWORKS runs from a task pane beside the document currently open in SOLIDWORKS.</figcaption>
    </figure>
  </div>
  <div class="bb-product-body__grid">
    <section class="bb-product-body__panel">
      <h3>Best fit</h3>
      <p>Use PDMPublisher for SOLIDWORKS when publishing should start from the document currently open in SOLIDWORKS and be controlled from the SOLIDWORKS task pane.</p>
    </section>
    <section class="bb-product-body__panel">
      <h3>Different from the PDM task product</h3>
      <p>This version stores settings as reusable profiles. If publishing should be launched by SOLIDWORKS PDM Professional as a task, workflow action, or schedule, use the PDM task version instead.</p>
    </section>
  </div>
  <h2>Feature highlights</h2>
  <div class="bb-product-body__feature-grid">
    <a class="bb-product-body__feature" href="https://pdmpublisher.com/help/src/pdmpublishersolidworks_profiles.html" target="_blank" rel="noopener noreferrer" aria-label="Open profiles feature guide in a new tab">
      <span class="bb-product-body__feature-icon" aria-hidden="true"><i class="ti ti-adjustments-horizontal"></i></span>
      <h3>Reusable profiles</h3>
      <p>Create publishing profiles for customers, departments, release packages, supplier exports, or internal review workflows.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__feature" href="https://pdmpublisher.com/help/src/pdmpublishersolidworks-publish.html" target="_blank" rel="noopener noreferrer" aria-label="Open publish job feature guide in a new tab">
      <span class="bb-product-body__feature-icon" aria-hidden="true"><i class="ti ti-3d-cube-sphere"></i></span>
      <h3>Active-document publishing</h3>
      <p>Publish the open SOLIDWORKS drawing, part, or assembly and optionally process resolved references using the selected profile.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__feature" href="https://pdmpublisher.com/help/src/pdmpublishersolidworks_logs.html" target="_blank" rel="noopener noreferrer" aria-label="Open logs feature guide in a new tab">
      <span class="bb-product-body__feature-icon" aria-hidden="true"><i class="ti ti-notebook"></i></span>
      <h3>Built-in logs</h3>
      <p>Use the Logs tab to review publishing steps, generated files, warnings, and errors without leaving the SOLIDWORKS add-in.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
  </div>
  <div class="bb-product-body__image-row">
    <a class="bb-product-body__image-card" href="https://pdmpublisher.com/help/src/pdmpublishersolidworks_profiles.html" target="_blank" rel="noopener noreferrer" aria-label="Open profiles and presets feature guide in a new tab">
      <img src="https://docs.bluebyte.biz/images/pdmpublisher/solidworks/profile-toolbar.png" alt="PDMPublisher for SOLIDWORKS profile toolbar">
      <h3>Profiles and presets</h3>
      <p>Save, load, edit, and share profile sections so common publishing jobs stay consistent across users.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__image-card" href="https://pdmpublisher.com/help/src/pdmpublishersolidworks_annotations.html" target="_blank" rel="noopener noreferrer" aria-label="Open annotations and output control feature guide in a new tab">
      <img src="https://docs.bluebyte.biz/images/pdmpublisher/solidworks/annotations.png" alt="PDMPublisher for SOLIDWORKS annotations tab">
      <h3>Annotations and output control</h3>
      <p>Add watermarks, QR codes, custom properties, formatted text, and controlled drawing sheet output to published deliverables.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
  </div>
  <h2>Main task-pane tabs</h2>
  <div class="bb-product-body__tab-grid">
    <a class="bb-product-body__tab-card" href="https://pdmpublisher.com/help/src/pdmpublishersolidworks_options.html" target="_blank" rel="noopener noreferrer" aria-label="Open PDMPublisher tab guide in a new tab">
      <div class="bb-product-body__tab-media">
        <img src="https://docs.bluebyte.biz/images/pdmpublisher/solidworks/overview-20260808.png" alt="PDMPublisher tab in the SOLIDWORKS add-in">
      </div>
      <div class="bb-product-body__tab-content">
        <span class="bb-product-body__tab-label"><i class="ti ti-settings-automation" aria-hidden="true"></i>PDMPublisher tab</span>
        <h3>Configure the publish job</h3>
        <p>Set formats, export locations, filename rules, reference processing, drawing sheet behavior, configurations, flat patterns, merged PDFs, bookmarks, and package options.</p>
        <span class="bb-product-body__external">Open tab guide <span aria-hidden="true">&#8599;</span></span>
      </div>
    </a>
    <a class="bb-product-body__tab-card" href="https://pdmpublisher.com/help/src/pdmpublishersolidworks_annotations.html" target="_blank" rel="noopener noreferrer" aria-label="Open Annotations tab guide in a new tab">
      <div class="bb-product-body__tab-media">
        <img src="https://docs.bluebyte.biz/images/pdmpublisher/solidworks/annotations.png" alt="Annotations tab in the SOLIDWORKS add-in">
      </div>
      <div class="bb-product-body__tab-content">
        <span class="bb-product-body__tab-label"><i class="ti ti-writing" aria-hidden="true"></i>Annotations tab</span>
        <h3>Add production-ready marks</h3>
        <p>Apply formatted text, custom properties, watermarks, QR codes, and repeatable annotation layouts to exported drawings and PDFs.</p>
        <span class="bb-product-body__external">Open tab guide <span aria-hidden="true">&#8599;</span></span>
      </div>
    </a>
    <a class="bb-product-body__tab-card" href="https://pdmpublisher.com/help/src/conditions_solidworks.html" target="_blank" rel="noopener noreferrer" aria-label="Open Conditions tab guide in a new tab">
      <div class="bb-product-body__tab-media">
        <img src="https://docs.bluebyte.biz/images/pdmpublisher/solidworks/conditions.png" alt="Conditions tab in the SOLIDWORKS add-in">
      </div>
      <div class="bb-product-body__tab-content">
        <span class="bb-product-body__tab-label"><i class="ti ti-filter" aria-hidden="true"></i>Conditions tab</span>
        <h3>Control what gets included</h3>
        <p>Build property-based rules with groups and logic so the active document and references are included, skipped, or reviewed before export.</p>
        <span class="bb-product-body__external">Open tab guide <span aria-hidden="true">&#8599;</span></span>
      </div>
    </a>
    <a class="bb-product-body__tab-card" href="https://pdmpublisher.com/help/src/pdmpublishersolidworks_logs.html" target="_blank" rel="noopener noreferrer" aria-label="Open Logs tab guide in a new tab">
      <div class="bb-product-body__tab-media">
        <img src="https://docs.bluebyte.biz/images/detailedlogs.png" alt="Detailed publishing logs">
      </div>
      <div class="bb-product-body__tab-content">
        <span class="bb-product-body__tab-label"><i class="ti ti-notebook" aria-hidden="true"></i>Logs tab</span>
        <h3>Review every publish result</h3>
        <p>Check generated files, skipped items, warnings, errors, condition decisions, and processing details from the current SOLIDWORKS session.</p>
        <span class="bb-product-body__external">Open tab guide <span aria-hidden="true">&#8599;</span></span>
      </div>
    </a>
    <a class="bb-product-body__tab-card" href="https://pdmpublisher.com/help/src/pdmpublishersolidworks_About.html" target="_blank" rel="noopener noreferrer" aria-label="Open About tab guide in a new tab">
      <div class="bb-product-body__tab-media">
        <img src="https://docs.bluebyte.biz/images/pdmpublisher/solidworks/about.png" alt="About tab in the SOLIDWORKS add-in">
      </div>
      <div class="bb-product-body__tab-content">
        <span class="bb-product-body__tab-label"><i class="ti ti-info-circle" aria-hidden="true"></i>About tab</span>
        <h3>Manage version and appearance</h3>
        <p>See the installed version, licensing and update links, and appearance options for working comfortably inside SOLIDWORKS.</p>
        <span class="bb-product-body__external">Open tab guide <span aria-hidden="true">&#8599;</span></span>
      </div>
    </a>
  </div>
  <h2>Capabilities included</h2>
  <div class="bb-product-body__capability-grid">
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/pdmpublishersolidworks_profiles.html" target="_blank" rel="noopener noreferrer" aria-label="Open profile-based publishing feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-adjustments"></i></span>
      <h3>Profile-based publishing</h3>
      <p>Save complete publishing setups for different jobs, customers, departments, suppliers, and release package types.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/pdmpublishersolidworks_presets.html" target="_blank" rel="noopener noreferrer" aria-label="Open starter presets feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-settings-automation"></i></span>
      <h3>Built-in starter presets</h3>
      <p>Start from common DXF, STEP, or PDF and STEP profiles, then customize the setup for your own standards.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/pdmpublishersolidworks_profile_sharing.html" target="_blank" rel="noopener noreferrer" aria-label="Open profile sharing feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-share"></i></span>
      <h3>Profile sharing</h3>
      <p>Share selected profile sections with other users by file transfer or PIN-based profile sharing where available.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/pdmpublisher-options/file-formats.html" target="_blank" rel="noopener noreferrer" aria-label="Open file formats feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-file-stack"></i></span>
      <h3>Many export formats</h3>
      <p>Create PDF, 3D PDF, DXF, DWG, STEP, IGES, STL, Parasolid, ACIS, eDrawings, images, and other supported outputs.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/pdmpublisher-options/sheets-to-export.html" target="_blank" rel="noopener noreferrer" aria-label="Open drawing sheet control feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-files"></i></span>
      <h3>Drawing sheet control</h3>
      <p>Export all sheets or only sheets matching naming patterns, with controlled sheet-name output for published files.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/pdmpublisher-options/convert-multiple-configurations.html" target="_blank" rel="noopener noreferrer" aria-label="Open configuration export feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-adjustments-cog"></i></span>
      <h3>Configuration export</h3>
      <p>Publish multiple part and assembly configurations, include configuration names in filenames, and filter configurations by pattern.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/pdmpublisher-options/export-references-individually.html" target="_blank" rel="noopener noreferrer" aria-label="Open reference processing feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-link"></i></span>
      <h3>Reference processing</h3>
      <p>Process the active assembly and its resolved references so model packages can include the files downstream teams expect.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/pdmpublisher-options/export-sheet-metal-flat-pattern-dxf.html" target="_blank" rel="noopener noreferrer" aria-label="Open flat-pattern DXF feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-vector-bezier"></i></span>
      <h3>Flat-pattern DXF</h3>
      <p>Export 1:1 sheet-metal flat patterns with bend lines, sketches, bounding boxes, forming tools, and filename collision protection.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/pdmpublisher-options/split-bodies.html" target="_blank" rel="noopener noreferrer" aria-label="Open split-body output feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-layers-intersect"></i></span>
      <h3>Split-body output</h3>
      <p>Support manufacturing workflows that need separate outputs for bodies, configurations, or derived model deliverables.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/pdmpublisher-options/merge-exported-pdfs.html" target="_blank" rel="noopener noreferrer" aria-label="Open PDF packages feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-file-type-pdf"></i></span>
      <h3>PDF packages</h3>
      <p>Merge exported PDFs, add a table of contents, include PDF bookmarks, and prepare cleaner review or release packages.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/pdmpublishersolidworks_annotations.html" target="_blank" rel="noopener noreferrer" aria-label="Open annotations and watermarks feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-writing"></i></span>
      <h3>Annotations and watermarks</h3>
      <p>Add custom text, SOLIDWORKS properties, watermarks, QR codes, and formatted annotations to drawings and PDFs.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/conditions_solidworks.html" target="_blank" rel="noopener noreferrer" aria-label="Open conditional publishing feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-filter"></i></span>
      <h3>Conditional publishing</h3>
      <p>Use condition groups to include or skip files based on properties and publishing rules before outputs are created.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/pdmpublisher-options/filename.html" target="_blank" rel="noopener noreferrer" aria-label="Open custom filenames feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-typography"></i></span>
      <h3>Custom filenames</h3>
      <p>Build file names from document properties, configuration names, sheet names, revisions, dates, and other placeholders.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/pdmpublisher-options/export-location.html" target="_blank" rel="noopener noreferrer" aria-label="Open flexible export locations feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-folder-open"></i></span>
      <h3>Flexible export locations</h3>
      <p>Publish to local folders, network paths, PDM folders, or format-specific destinations for PDFs, DXFs, STEP files, and more.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/pdmpublisher-options/archive-all-exported-documents.html" target="_blank" rel="noopener noreferrer" aria-label="Open ZIP archives feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-file-zip"></i></span>
      <h3>ZIP archives</h3>
      <p>Create a single ZIP package of exported documents for suppliers, review workflows, release bundles, or customer handoff.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/pdmpublishersolidworks-open-export-location.html" target="_blank" rel="noopener noreferrer" aria-label="Open export folder feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-folder-symlink"></i></span>
      <h3>Open export folder</h3>
      <p>Jump directly to the generated output folder after publishing so users can review, send, or package files faster.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/pdmpublishersolidworks_logs.html" target="_blank" rel="noopener noreferrer" aria-label="Open detailed job logs feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-notebook"></i></span>
      <h3>Detailed job logs</h3>
      <p>Review successful exports, warnings, errors, skipped files, and processing details from the built-in Logs tab.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
    <a class="bb-product-body__capability" href="https://pdmpublisher.com/help/src/pdmpublishersolidworks-theme.html" target="_blank" rel="noopener noreferrer" aria-label="Open appearance options feature guide in a new tab">
      <span class="bb-product-body__capability-icon" aria-hidden="true"><i class="ti ti-palette"></i></span>
      <h3>Light and dark appearance</h3>
      <p>Use the add-in comfortably in modern SOLIDWORKS environments with product appearance and theme options.</p>
      <span class="bb-product-body__external">Feature guide <span aria-hidden="true">&#8599;</span></span>
    </a>
  </div>
  <h2>Common publishing workflows</h2>
  <ul>
    <li>Create a supplier package with PDF drawings, STEP models, and a ZIP archive from the active assembly.</li>
    <li>Export manufacturing DXFs from sheet-metal parts using 1:1 flat patterns, bend lines, and controlled file names.</li>
    <li>Publish drawing PDFs with watermarks, QR codes, custom properties, selected sheets, bookmarks, and a table of contents.</li>
    <li>Generate separate deliverables for multiple configurations while filtering out configurations that should not be released.</li>
    <li>Maintain separate profiles for prototype, released, customer, fabrication, and purchasing output packages.</li>
  </ul>
  <h2>Why teams use it</h2>
  <p>Engineering teams often need the same outputs again and again: a PDF for review, a DXF for sheet metal, a STEP file for a supplier, or a drawing package for manufacturing. PDMPublisher for SOLIDWORKS turns those repeated export routines into profile-based actions that are easier to run and easier to standardize.</p>
  <p>The result is less manual saving, fewer missed configurations or sheets, and a cleaner handoff from design work to the teams that depend on accurate published files.</p>
  <div class="bb-product-body__note">
    <p>Need automated publishing from SOLIDWORKS PDM Professional instead? See <a href="https://bluebyte.biz/product/pdmpublisher/" target="_blank" rel="noopener noreferrer">PDMPublisher for SOLIDWORKS PDM</a>.</p>
  </div>
</section>
