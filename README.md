# ESRI Web GIS Hub

This repository is the central hub for all things ESRI/Web GIS in my workflow. It consolidates study notes, examples, and mini-projects around building with ESRI technologies.

## Scope

- ArcGIS JavaScript API examples and guides
- ArcGIS Dashboards setup and best practices
- Experience Builder widgets, theming, and workflows
- Survey123 form design, Connect/XLSForm patterns, and integration
- Backend and data workflows that support web GIS apps (where relevant)

## Structure

- `docs/JS/ArcGIS`: ArcGIS JS API notebooks and HTML examples
- `docs/CSS`, `docs/JS`, `docs/React`: Frontend foundations used by web GIS apps
- `docs/Backend`: Supporting backend topics (e.g., Django example project, SQL)
- `docs/Cesium`: 3D mapping references (for comparison and extra context)

The site is built with Jupyter Book. Use the left navigation or the links on the landing page to explore topics.

## View the site

Published site: `https://gisyaliny.github.io/esri/`

## Develop locally

If you have the prerequisites from `requirements.txt`, you can build locally:

```bash
jb build .
```

Or use the provided PowerShell helper to build and deploy to GitHub Pages:

```powershell
./build_and_deploy.ps1
```
