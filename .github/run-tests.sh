#!/usr/bin/env bash
set -euo pipefail # halt script on error

bundle exec jekyll build
bundle exec htmlproofer ./_site --allow-hash-href  --empty-alt-ignore --check_img_http 
