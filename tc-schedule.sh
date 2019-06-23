#!/bin/bash

set -ex

curdir=$(dirname "$0")

pip3 install --quiet --user --upgrade pip

curl -L --silent https://raw.githubusercontent.com/reuben/taskcluster-github-decision/ab96a9d7e72dbeb22702d84b0556300024eb8a04/requirements.txt | pip3 install --quiet --user --upgrade -r /dev/stdin
curl -L --silent https://raw.githubusercontent.com/reuben/taskcluster-github-decision/ab96a9d7e72dbeb22702d84b0556300024eb8a04/tc-decision.py > ${curdir}/tc-decision.py
python3 ${curdir}/tc-decision.py --dry
