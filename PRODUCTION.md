# Production contract

## Runtime baseline

This repository mounts the Earth in Change production observation runtime from `GeoGeekLab/GeoGeekLab.github.io` pinned to commit `d949bd75870bfd49f6d12b297e6cca02de107f9c`.

It loads the unified GeoGeek data-supply runtime and the Earth observation v3 module. Production CSS is pinned to the same source commit.

## Data contract

- Provider: NASA EOSDIS GIBS.
- Delivery: date-scoped WMS raster requests.
- Projection: EPSG:4326 viewport requests.
- Time: the user-selected UTC view date controls the requested product date.
- Products carry product-specific availability windows, cadence, resolution, color semantics, and interpretation limits.

## Interpretation limits

A selected date is not one instantaneous photograph. Cloud, atmosphere, overpass time, retrieval algorithms, compositing, resampling, and provider availability condition the rendered view.

## Deployment contract

`main` deploys through GitHub Pages Actions. Static contract checks run before the Pages artifact is uploaded.

The source runtime is version-pinned. A production runtime upgrade requires an explicit pinned-SHA change in `index.html`.
