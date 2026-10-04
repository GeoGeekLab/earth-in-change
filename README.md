# Earth in Change

**Remote sensing · multi-temporal imagery · geophysical products · observation semantics**

*EARTH IN CHANGE* is an Earth-observation instrument for comparing date-scoped satellite products across geographic space. It treats every raster as a geospatial observation product with an explicit sensor/product lineage, temporal support, spatial resolution, spectral or retrieval semantics, map extent, and rendering convention.

<p align="center">
  <a href="https://geogeeklab.github.io/earth-in-change/">
    <img src="https://geogeeklab.github.io/earth-in-change/assets/instrument.png" alt="Earth in Change instrument" width="720">
  </a>
</p>

## Instrument capabilities

*EARTH IN CHANGE* provides a product-aware interface for examining how Earth-observation signals vary across location, acquisition date, and measurement product.

- **Select an observation product.** Switch among imagery and geophysical layers exposed through NASA GIBS, including corrected reflectance, false-color composites, temperature, precipitation, and cryosphere-related products.
- **Set the observation date.** Request a specific UTC date and evaluate the corresponding date-scoped raster while preserving the product definition and acquisition context.
- **Navigate geographic extent.** Pan and zoom the observation view while maintaining the relationship among map extent, coordinate reference, spatial resolution, and rendered raster values.
- **Compare observations through time.** Place two dates in direct comparison to identify spatial change while holding the selected product and geographic context constant.
- **Inspect product context.** Keep sensor/product identity, date, map extent, and rendering semantics visible as part of the interpretation rather than as hidden metadata.
- **Reproduce a view.** Preserve the principal observation state so that a selected product, date, and geographic view can be revisited as the same analytical configuration.

## Observation framework

The instrument is designed for multi-temporal interpretation of remotely sensed imagery. A selected UTC date drives requests to [NASA EOSDIS Global Imagery Browse Services (GIBS)](https://www.earthdata.nasa.gov/eosdis/science-system-description/eosdis-components/gibs), while viewport navigation preserves the relationship among acquisition time, geographic extent, product definition, and rendered pixel values.

GIBS exposes NASA Earth science visualizations through standards-based geospatial services, including [OGC Web Map Service (WMS)](https://www.ogc.org/standards/wms/). Within *EARTH IN CHANGE*, date-scoped WMS requests are evaluated in a geographic coordinate reference context using EPSG:4326, so temporal selection and map extent jointly define the requested observation view.

Temporal comparison makes change visible while preserving product semantics. Depending on the selected layer, the raster may encode corrected-reflectance imagery, false-color spectral combinations, land-surface temperature, precipitation, snow or ice indicators, or other geophysical products exposed through GIBS.

## Measurement model

| Dimension | Interpretation |
| --- | --- |
| Data infrastructure | [NASA EOSDIS GIBS](https://www.earthdata.nasa.gov/eosdis/science-system-description/eosdis-components/gibs) |
| Delivery protocol | Date-scoped [OGC WMS](https://www.ogc.org/standards/wms/) raster requests |
| Geographic reference | [EPSG:4326](https://epsg.io/4326) geographic viewport requests |
| Temporal support | User-selected UTC observation date, constrained by product cadence and availability |
| Spatial support | Product-specific pixel size, native sampling, resampling, and requested map extent |
| Spectral / retrieval semantics | Product-specific band combination, retrieval algorithm, compositing rule, and color mapping |
| Contextual inspection | Sensor/product identity, observation date, geographic extent, and cross-date comparison |

## Remote-sensing interpretation

A rendered layer is the endpoint of an observation and processing chain. Sensor characteristics define spectral and spatial sampling; acquisition geometry and atmosphere condition the recorded signal; retrieval algorithms convert measurements into geophysical variables; compositing and resampling alter effective temporal and spatial support; and visualization rules map product values into display space.

For this reason, comparison in *EARTH IN CHANGE* is product-aware rather than purely image-based. The meaningful unit of comparison is the observation product at a stated time and place, not only the visual similarity of two rasters. [NASA Worldview](https://worldview.earthdata.nasa.gov/) provides a broader operational context for the same GIBS imagery infrastructure.

## Instrument access

**Live instrument:** https://geogeeklab.github.io/earth-in-change/

*EARTH IN CHANGE* is a public entrypoint to the production Earth-observation runtime maintained in [`GeoGeekLab/GeoGeekLab.github.io`](https://github.com/GeoGeekLab/GeoGeekLab.github.io). [`SOURCE.json`](./SOURCE.json) records the pinned upstream revision, and [`PRODUCTION.md`](./PRODUCTION.md) defines the observation, runtime, and data-supply contract.

*GeoGeek note — pixels have provenance, scale, support, and time.*
