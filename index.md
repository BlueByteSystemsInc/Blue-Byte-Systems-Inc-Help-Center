---
_layout: landing
title: Blue Byte Systems Help Center | SOLIDWORKS and PDM Add-ins
description: Official documentation and support resources for Blue Byte Systems SOLIDWORKS and SOLIDWORKS PDM tools.
---

<style>
.bbs-page {
  --bbs-surface: var(--bs-body-bg, #fff);
  --bbs-surface-soft: #f4f9ff;
  --bbs-border: #dde6ef;
  --bbs-border-strong: #b7d4ef;
  --bbs-text-muted: var(--bs-secondary-color, #5f6b7a);
  width: 100%;
  max-width: 960px;
  margin: 0 auto;
  padding: 0 24px 64px;
}

[data-bs-theme="dark"] .bbs-page {
  --bbs-surface: #161b22;
  --bbs-surface-soft: #102235;
  --bbs-border: #2d3744;
  --bbs-border-strong: #2f6fa9;
  --bbs-text-muted: #b7c2d0;
}

.bbs-hero {
  text-align: center;
  padding: 48px 0 42px;
}

.bbs-hero-logo {
  display: block;
  width: min(360px, 100%);
  height: auto;
  margin: 0 auto 28px;
}

.bbs-hero h1 {
  font-size: 34px;
  font-weight: 650;
  line-height: 1.25;
  margin: 0 0 12px;
}

.bbs-hero p {
  max-width: 620px;
  margin: 0 auto;
  font-size: 16px;
  line-height: 1.65;
  color: var(--bbs-text-muted);
}

.bbs-actions {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  gap: 12px;
  margin-top: 26px;
}

.bbs-action {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  min-height: 42px;
  padding: 9px 18px;
  border: 1px solid var(--bbs-border-strong);
  border-radius: 6px;
  text-decoration: none !important;
  font-weight: 500;
}

.bbs-action-primary {
  background: #1f7ed0;
  border-color: #1f7ed0;
  color: #fff !important;
}

.bbs-section-title {
  text-align: center;
  font-size: 12px;
  font-weight: 600;
  letter-spacing: 0.08em;
  text-transform: uppercase;
  margin: 0 0 18px;
}

.bbs-products {
  display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 14px;
  margin: 0 auto 34px;
}

.bbs-product {
  text-align: center;
  padding: 20px 18px;
  border: 1px solid var(--bbs-border);
  border-radius: 8px;
  background: var(--bbs-surface);
  color: var(--bs-body-color);
}

.bbs-product h2 {
  font-size: 17px;
  font-weight: 600;
  margin: 0 0 8px;
  padding-top: 0 !important;
  border-top: 0 !important;
}

.bbs-product p {
  font-size: 14px;
  line-height: 1.55;
  margin: 0 0 14px;
  color: var(--bbs-text-muted);
}

.bbs-product a {
  font-weight: 500;
  text-decoration: none !important;
}

.bbs-support {
  max-width: 720px;
  margin: 0 auto 34px;
  padding: 22px 20px;
  text-align: center;
  border: 1px solid var(--bbs-border-strong);
  border-radius: 8px;
  background: var(--bbs-surface-soft);
  color: var(--bs-body-color);
}

.bbs-support h2 {
  font-size: 20px;
  margin: 0 0 8px;
}

.bbs-support p {
  margin: 0 0 12px;
  line-height: 1.55;
  color: var(--bbs-text-muted);
}

.bbs-support a {
  font-weight: 600;
}

.bbs-partner {
  text-align: center;
  margin: 0;
}

.bbs-partner-text {
  font-size: 14px;
  font-weight: 500;
  margin: 0;
  color: var(--bbs-text-muted);
}

.bbs-partner-badge {
  display: block;
  height: 76px;
  margin: 8px auto 0;
}

@media (max-width: 680px) {
  .bbs-page {
    padding: 0 16px 44px;
  }

  .bbs-hero {
    padding-top: 34px;
  }

  .bbs-hero h1 {
    font-size: 27px;
  }

  .bbs-products {
    grid-template-columns: 1fr;
  }
}
</style>

<div class="bbs-page">

<section class="bbs-hero">
<img class="bbs-hero-logo" src="/images/large_logo.png" alt="Blue Byte Systems Inc."/>
<h1>Blue Byte Systems Help Center</h1>
<p>Documentation, downloads, and support resources for Blue Byte Systems SOLIDWORKS PDM tools.</p>
<div class="bbs-actions">
<a class="bbs-action bbs-action-primary" href="src/introduction.html">Start here</a>
</div>
</section>

<div class="bbs-section-title">Product Documentation</div>

<section class="bbs-products">
<div class="bbs-product">
<h2>PDMPublisher</h2>
<p>Automated publishing and export for SOLIDWORKS PDM.</p>
<a href="src/pdmpublisher.html">Open docs &rarr;</a>
</div>

<div class="bbs-product">
<h2>PDM2Excel</h2>
<p>Export vault data, variables, and BOM information to Excel or CSV.</p>
<a href="src/pdm2excel.html">Open docs &rarr;</a>
</div>

<div class="bbs-product">
<h2>PDMDeploy</h2>
<p>Install and update Blue Byte Systems PDM add-ins using an activation code.</p>
<a href="src/cdpdm.html">Open docs &rarr;</a>
</div>

<div class="bbs-product">
<h2>PDMShell</h2>
<p>Command-line automation for SOLIDWORKS PDM data management.</p>
<a href="https://pdmshell.com">Open PDMShell &rarr;</a>
</div>
</section>

<section class="bbs-support">
<h2>Need Support?</h2>
<p>Send us your question, screenshots, logs, and the product name you need help with.</p>
<p><a href="mailto:support@bluebytesystemsinc.zohodesk.com">support@bluebytesystemsinc.zohodesk.com</a></p>
<p><a href="https://bluebyte.biz/contact">Contact form &rarr;</a></p>
</section>

<div class="bbs-partner">
<p class="bbs-partner-text">Blue Byte Systems is a SOLIDWORKS Solution Partner.</p>
<img class="bbs-partner-badge" src="/images/solution_partner_logo.png" alt="SOLIDWORKS Solution Partner"/>
</div>

</div>
