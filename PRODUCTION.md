# Production contract

`earth-in-change` is the public entrypoint for the production *EARTH IN CHANGE* instrument.

## Runtime

- Source repository: `GeoGeekLab/GeoGeekLab.github.io`
- Tested source revision: `064ce2c718499fc26a744a9e58cad09d97a323fb`
- Production channel: `https://geogeeklab.github.io/`
- Shared bootstrap: `/core/observatory-entry.js`
- Earth observation runtime: `/earth-observation-lab-v3.js`
- Provider control: `/core/provider-stability.js` + `/core/data-supply.js`

The entrypoint and main Lab use the same runtime modules, product registry, observation semantics, and release channel.

## Data supply

NASA EOSDIS GIBS provides date-scoped Earth-observation raster products through standards-based web-map services. Product identity, UTC view date, viewport extent, coordinate reference, rendering state, and product metadata remain part of the runtime state.

## Release checks

The repository validates the source revision, shared bootstrap reference, Chromium instrument mount, absence of `.instrument-error`, provider/Data Supply installation, instrument screenshot, Pages deployment, and the deployed public endpoint.
