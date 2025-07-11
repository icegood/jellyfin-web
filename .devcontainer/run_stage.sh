#!/bin/bash
docker exec -u node jellyfin_dev_web bash -c 'cd /workspaces/jellyfin-web && rm -fr dist .dist-build && \
	npm ci --no-audit --unsafe-perm && npm run build:production && mv dist .dist-build'
