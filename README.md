# Earth in Change

**Remote sensing · multi-temporal imagery · geophysical products · observation semantics**

*EARTH IN CHANGE* is an Earth-observation instrument for comparing date-scoped satellite products across geographic space. Each layer carries a defined sensor/product lineage, temporal support, spatial resolution, spectral or retrieval semantics, map extent, and rendering convention.

<p align="center">
  <a href="https://geogeeklab.github.io/earth-in-change/">
    <img src="https://geogeeklab.github.io/earth-in-change/assets/instrument.png" alt="Earth in Change instrument" width="720">
  </a>
</p>

## Instrument capabilities

- **Select an observation product.** Switch among NASA GIBS imagery and geophysical layers, including corrected reflectance, false-color composites, temperature, precipitation, and cryosphere-related products.
- **Set the observation date.** Request a UTC date and load the corresponding date-scoped raster.
- **Navigate geographic extent.** Pan and zoom while retaining map extent, coordinate reference, spatial resolution, and product state.
- **Compare observations through time.** Place two dates in direct comparison for the same product and geographic view.
- **Inspect product context.** Read sensor/product identity, date, map extent, and rendering semantics.
- **Reproduce a view.** Preserve the principal product, date, and geographic state for repeat inspection.

## Observation model

| Dimension | Specification |
| --- | --- |
| Data infrastructure | [NASA EOSDIS GIBS](https://www.earthdata.nasa.gov/eosdis/science-system-description/eosdis-components/gibs) |
| Delivery protocol | Date-scoped [OGC WMS](https://www.ogc.org/standards/wms/) raster requests |
| Geographic reference | [EPSG:4326](https://epsg.io/4326) geographic viewport requests |
| Temporal support | User-selected UTC observation date, subject to product cadence and availability |
| Spatial support | Product-specific pixel size, native sampling, resampling, and requested map extent |
| Spectral / retrieval semantics | Product-specific band combination, retrieval algorithm, compositing rule, and color mapping |
| Inspection state | Sensor/product identity, observation date, geographic extent, and comparison date |

## Processing context

A rendered layer follows an observation and processing chain:

1. sensor sampling records the source signal;
2. retrieval or compositing defines the geophysical product;
3. spatial resampling maps the product to the requested extent and output size;
4. rendering rules convert product values into the displayed raster.

The instrument exposes product selection, date, extent, comparison date, and map state as analytical controls.

## Supported analysis

The interface supports multi-temporal inspection of corrected-reflectance imagery, false-color combinations, land-surface temperature, precipitation, snow and ice indicators, and other GIBS products available to the runtime.

NASA GIBS documentation defines the service infrastructure and layer delivery model used by the instrument. [NASA Worldview](https://worldview.earthdata.nasa.gov/) is an external NASA interface for browsing GIBS-backed Earth-observation layers.

## Instrument access

**Live instrument:** https://geogeeklab.github.io/earth-in-change/

Source runtime: [`GeoGeekLab/GeoGeekLab.github.io`](https://github.com/GeoGeekLab/GeoGeekLab.github.io)  
Pinned revision: [`SOURCE.json`](./SOURCE.json)  
Production contract: [`PRODUCTION.md`](./PRODUCTION.md)

*GeoGeek note — pixels have provenance, scale, support, and time.*
