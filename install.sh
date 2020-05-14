#! /bin/sh

# exit if a command fails
set -e

# install s3cmd
apk update
apk add --no-cache python py-pip py-setuptools git ca-certificates
pip install python-magic
git clone https://github.com/s3tools/s3cmd.git /tmp/s3cmd
cd /tmp/s3cmd
python setup.py install
apk del git
apk add bash
rm -rf /tmp/s3cmd
