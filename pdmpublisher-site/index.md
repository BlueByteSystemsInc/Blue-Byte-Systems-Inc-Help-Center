---
_layout: landing
title: Home
description: Official PDMPublisher documentation for SOLIDWORKS PDM Professional, the SOLIDWORKS add-in, and PDMDeploy.
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

.pdp-actions {
  display: flex;
  justify-content: center;
  gap: 10px;
  margin-top: 22px;
  flex-wrap: wrap;
}

.pdp-action {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  min-height: 40px;
  padding: 8px 16px;
  border: 1px solid #4b91c8;
  border-radius: 6px;
  text-decoration: none !important;
  font-weight: 500;
}

.pdp-action-primary {
  background: #1f7ed0;
  color: #fff !important;
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
<img class="pdp-hero-logo" src="../images/large_logo.png" alt="Blue Byte Systems Inc."/>
<h1>PDMPublisher Help Center</h1>
<p>Setup, licensing, task configuration, export options, and troubleshooting for PDMPublisher and PDMDeploy.</p>
<div class="pdp-actions">
<a class="pdp-action" href="../src/introduction.md">Welcome to PDMPublisher</a>
<a class="pdp-action pdp-action-primary" href="../src/propertiespagepdmpublisher.md">Set up your first task</a>
<a class="pdp-action" href="../src/pdmpublishertrial.md">Get a 7-day trial</a>
</div>
</section>

<h2 class="pdp-section-title">Documentation</h2>

<section class="pdp-docs">
<div class="pdp-doc">
<h2>PDMPublisher for PDM Professional</h2>
<p>Configure automated exports, filenames, conditions, annotations, scheduled items, and activity logs.</p>
<a href="../src/pdmpublisher.md">Open documentation &rarr;</a>
</div>

<div class="pdp-doc">
<h2>PDMPublisher for SOLIDWORKS</h2>
<p>Configure the desktop add-in options, annotations, conditions, logs, and licensing.</p>
<a href="../src/pdmpublishersolidworks.md">Open documentation &rarr;</a>
</div>

<div class="pdp-doc">
<h2>PDMDeploy</h2>
<p>Install and update PDMPublisher in SOLIDWORKS PDM using the public or private activation code.</p>
<a href="../src/cdpdm.md">Open deployment guide &rarr;</a>
</div>
</section>

<section class="pdp-support">
<h2>PDMPublisher support</h2>
<p>Email <a href="mailto:support@bluebytesystemsinc.zohodesk.com">support@bluebytesystemsinc.zohodesk.com</a> with the task log, screenshots, and a description of the issue.</p>
</section>

</div>
