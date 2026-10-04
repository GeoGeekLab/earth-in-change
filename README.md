# Earth in Change

**Remote sensing · image time series · surface observation**

Earth in Change is an Earth-observation instrument for comparing date-scoped satellite products across geographic space. It treats each raster as an observation product with defined temporal support, spatial resolution, spectral or retrieval semantics, and acquisition context.

![Earth in Change instrument](https://geogeeklab.github.io/earth-in-change/assets/instrument.png)

## Observation framework

The instrument is designed for temporal interpretation of remotely sensed imagery rather than simple image browsing. A selected UTC date drives NASA EOSDIS GIBS requests, while viewport navigation and product metadata preserve the connection among sensor, product, acquisition time, map extent, and rendered pixel values.

Temporal comparison makes change visible while keeping product semantics explicit. Depending on the selected layer, the raster may represent true-color imagery, false-color composites, land-surface temperature, precipitation, snow cover, or another geophysical product exposed through GIBS.

## Measurement context

| Dimension | Interpretation |
| --- | --- |
| Data provider | NASA EOSDIS Global Imagery Browse Services (GIBS) |
| Delivery | Date-scoped WMS raster requests |
| Geographic reference | EPSG:4326 viewport requests |
| Time | User-selected UTC observation date |
| Spatial support | Product-specific pixel size and map extent |
| Observation semantics | Product-specific spectral, retrieval, compositing, and color conventions |

Each rendered layer should be interpreted through its product definition. Acquisition timing, cloud and atmospheric conditions, compositing strategy, retrieval algorithm, resampling, and spatial resolution all contribute to the information content of the image.

## Instrument access

**Live instrument:** https://geogeeklab.github.io/earth-in-change/

This repository provides the public entrypoint. The production Earth-observation runtime remains in `GeoGeekLab/GeoGeekLab.github.io`; `SOURCE.json` records the pinned source revision and `PRODUCTION.md` defines the data and runtime contract.

*GeoGeek note — pixels have provenance.*
