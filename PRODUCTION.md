# Production contract

`earth-in-change` is the public entrypoint for the production *EARTH IN CHANGE* instrument.

## Runtime

- Source repository: `GeoGeekLab/GeoGeekLab.github.io`
- Tested source revision: `de142ef7a2002498b01fae22ff8734b42475de9c`
- Runtime release: `20261004b`
- Production channel: `https://geogeeklab.github.io/`
- Shared bootstrap: `/core/observatory-entry.js`
- Earth observation runtime: `/earth-observation-lab-v3.js`
- Provider control: `/core/provider-stability.js` + `/core/data-supply.js`

The entrypoint and main Lab use the same runtime modules, product registry, observation semantics, and release channel.

## Data supply

NASA EOSDIS GIBS provides date-scoped Earth-observation raster products through standards-based web-map services. Product identity, UTC view date, viewport extent, coordinate reference, rendering state, and product metadata remain part of the runtime state.

## Release checks

The repository validates the source revision, shared bootstrap reference, Chromium instrument mount, absence of `.instrument-error`, provider/Data Supply installation, instrument screenshot, Pages deployment, and the deployed public endpoint.
