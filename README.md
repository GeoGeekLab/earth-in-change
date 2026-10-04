# Earth in Change

**Sensor / image / acquisition time.**

Earth in Change is an independent GeoGeek Observatory deployment of the production Earth observation instrument. It uses the unified GeoGeek data-supply contract and date-scoped NASA EOSDIS GIBS imagery with viewport navigation, product semantics, comparison controls, and explicit observation limits.

## Public instrument

https://geogeeklab.github.io/earth-in-change/

## Runtime

The production runtime is pinned to a specific commit of `GeoGeekLab/GeoGeekLab.github.io`. See `PRODUCTION.md` for the exact baseline, data contract, interpretation limits, and deployment policy.

## Local shell

```bash
python -m http.server 8000
```

Open `http://localhost:8000`.

The instrument requires network access for its pinned runtime and NASA GIBS raster requests.

## Deployment

Pushes to `main` deploy through `.github/workflows/pages.yml`. Static production-contract checks run before the Pages artifact is uploaded.

Third-party software and data remain subject to their respective terms and licenses. This repository does not introduce a project license that is absent from the source project.
