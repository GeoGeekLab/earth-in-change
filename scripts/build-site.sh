#!/usr/bin/env bash
set -euo pipefail

PIN="d949bd75870bfd49f6d12b297e6cca02de107f9c"
RAW="https://raw.githubusercontent.com/GeoGeekLab/GeoGeekLab.github.io/${PIN}/site"

rm -rf _site
mkdir -p _site/runtime/core _site/runtime/data _site/runtime/earth-observation-v3
cp index.html README.md PRODUCTION.md _site/
touch _site/.nojekyll

fetch() {
  local src="$1" dst="$2"
  curl --fail --silent --show-error --location --retry 3 "${RAW}/${src}" --output "${dst}"
}

fetch core/data-supply.js _site/runtime/core/data-supply.js
fetch data/supply-registry.js _site/runtime/data/supply-registry.js
fetch earth-observation-lab-v3.js _site/runtime/earth-observation-lab-v3.js
fetch earth-observation-lab.css _site/runtime/earth-observation-lab.css
fetch earth-observation-v3.css _site/runtime/earth-observation-v3.css
for file in model.js template.js map-camera.js raster.js mount.js; do
  fetch "earth-observation-v3/${file}" "_site/runtime/earth-observation-v3/${file}"
done

test -s _site/runtime/core/data-supply.js
test -s _site/runtime/data/supply-registry.js
test -s _site/runtime/earth-observation-lab-v3.js
test -s _site/runtime/earth-observation-v3/mount.js
grep -q 'window.GeoEarthTemporalLab' _site/runtime/earth-observation-lab-v3.js
grep -q "./earth-observation-v3/mount.js" _site/runtime/earth-observation-lab-v3.js
! grep -R -q 'cdn.jsdelivr.net/gh/GeoGeekLab/GeoGeekLab.github.io' _site

(
  cd _site
  find runtime -type f -print0 | sort -z | xargs -0 sha256sum > runtime-manifest.sha256
)
