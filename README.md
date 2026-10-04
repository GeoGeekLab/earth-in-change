# Earth in Change

**Sensor / image / acquisition time**

Earth in Change is an observation instrument for examining how remotely sensed views of Earth depend on product, date, and place. It uses NASA EOSDIS GIBS imagery to make temporal comparison explicit without treating every rendered image as a direct photograph of a single instant.

> **GeoGeek principle:** Pixels have provenance.

## Why this project exists

Earth-observation images are easy to read as pictures and harder to read as measurements. A rendered scene carries the history of a sensor, an acquisition strategy, a processing chain, a product definition, and a time window.

This project keeps those conditions visible. The goal is not simply to move through a map. The goal is to compare Earth while preserving the meaning of the data being compared.

## Measurement concept

The instrument requests date-scoped raster products from NASA EOSDIS GIBS and places them in a navigable geographic viewport. Product semantics remain part of the observation: cadence, resolution, color meaning, availability, and interpretation limits can differ from one layer to another.

| Condition | Meaning in the instrument |
| --- | --- |
| Provider | NASA EOSDIS GIBS |
| Delivery | Date-scoped WMS raster requests |
| Geographic reference | EPSG:4326 viewport requests |
| Time control | User-selected UTC view date |
| Comparison | Product- and date-aware visual comparison |

## Reading the view

A selected date does not necessarily represent one instantaneous exposure. Cloud, atmosphere, orbital overpass timing, retrieval algorithms, compositing, resampling, and provider availability can all affect what appears on screen.

Use the instrument to ask questions such as:

- Is an apparent change likely to be geophysical, atmospheric, seasonal, or product-related?
- What does changing the date actually change in the source request?
- Do two layers represent the same physical quantity in the same way?
- What remains unknown when an image looks visually persuasive?

## Operations

**Public instrument**  
https://geogeeklab.github.io/earth-in-change/

The entry repository mounts the production Earth-observation runtime from `GeoGeekLab/GeoGeekLab.github.io`, pinned to commit `d949bd75870bfd49f6d12b297e6cca02de107f9c`. The runtime and its product contract change only when that production baseline is intentionally advanced.

See [`PRODUCTION.md`](./PRODUCTION.md) for the data contract and interpretation limits.

For local inspection of the entry shell:

```bash
python -m http.server 8000
```

Then open `http://localhost:8000`. Network access is required for the pinned runtime and NASA GIBS requests.

---

Part of the **GeoGeek Observatory** — observing change without hiding the conditions of observation.
