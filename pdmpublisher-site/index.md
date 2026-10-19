---
_layout: landing
title: Home
description: Official PDMPublisher documentation for SOLIDWORKS PDM Professional, the SOLIDWORKS add-in, and PDMDeploy.
---

<style>
[data-layout="landing"] .bbs-content-trials,
[data-layout="landing"] > footer {
  display: none !important;
}

.pdp-home {
  --pdp-border: #d9e3ec;
  --pdp-muted: var(--bs-secondary-color, #5f6b7a);
  width: 100%;
  max-width: 980px;
  margin: 0 auto;
  padding: 56px 24px;
}

[data-bs-theme="dark"] .pdp-home {
  --pdp-border: #344454;
  --pdp-muted: #b8c4d0;
}

.pdp-docs {
  display: grid;
  grid-template-columns: repeat(3, minmax(0, 1fr));
  gap: 12px;
}

.pdp-doc {
  display: block;
  padding: 18px;
  border: 1px solid var(--pdp-border);
  border-radius: 8px;
  color: inherit !important;
  text-decoration: none !important;
  transition: border-color 120ms ease, box-shadow 120ms ease, transform 120ms ease;
}

.pdp-doc:hover,
.pdp-doc:focus-visible {
  border-color: var(--bs-link-color, #0869b5);
  box-shadow: 0 4px 14px rgb(0 0 0 / 10%);
  transform: translateY(-1px);
}

.pdp-doc h2 {
  margin: 0 0 7px;
  padding: 0 !important;
  border: 0 !important;
  font-size: 16px;
  font-weight: 600;
}

.pdp-doc p {
  margin: 0;
  color: var(--pdp-muted);
  font-size: 14px;
  line-height: 1.55;
}

@media (max-width: 760px) {
  .pdp-home {
    padding: 32px 16px;
  }

  .pdp-docs {
    grid-template-columns: 1fr;
  }
}
</style>

<div class="pdp-home">
<section class="pdp-docs">
<a class="pdp-doc" href="../src/pdmpublishersolidworks.md">
<h2>PDMPublisher for SOLIDWORKS</h2>
<p>Publish from SOLIDWORKS, create native copies, manage properties, build release packages, and share reusable settings.</p>
</a>

<a class="pdp-doc" href="../src/pdmpublisher.md">
<h2>PDMPublisher PDM Task</h2>
<p>Configure automated exports, filenames, conditions, annotations, scheduled items, and activity logs.</p>
</a>

<a class="pdp-doc" href="../src/cdpdm.md">
<h2>PDMDeploy</h2>
<p>Install and update PDMPublisher in SOLIDWORKS PDM using the public or private activation code.</p>
</a>
</section>
</div>
