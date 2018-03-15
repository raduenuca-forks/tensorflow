#!/bin/bash

set -ex

curdir=$(dirname "$0")

pip3 install --verbose --user --upgrade --allow-all-external pip

curl -L --silent https://raw.githubusercontent.com/lissyx/taskcluster-github-decision/d5e8b7cf5b88efb7b1c890a903a350316ad7e932/requirements.txt | pip3 install --verbose --user --upgrade --allow-all-external -r /dev/stdin
curl -L --silent https://raw.githubusercontent.com/lissyx/taskcluster-github-decision/d5e8b7cf5b88efb7b1c890a903a350316ad7e932/tc-decision.py > ${curdir}/tc-decision.py
python3 ${curdir}/tc-decision.py
