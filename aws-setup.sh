#!/bin/bash
# Setup for AWS Amazon Linux environments

sudo yum install python36-devel python36-pip -y
sudo yum install direnv

# get the directory of this file
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $DIR

[ !-e .venv] && mkdir .venv
python3.6 -m venv .venv
source .venv/bin/activate

pip install -r requirements.txt
