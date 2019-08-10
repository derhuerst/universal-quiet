#!/bin/bash
set -e
set -o pipefail
set -x

git clone \
	-b install-script --single-branch --depth 1 \
	https://github.com/derhuerst/quiet.git quiet
cd quiet
./install-dependencies.sh

# todo
./bootstrap
./bootstrap_js
