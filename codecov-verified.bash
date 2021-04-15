#!/usr/bin/env bash

# code below adapted from https://docs.codecov.io/docs/about-the-codecov-bash-uploader
curl -s https://codecov.io/bash > codecov
CODECOV_VERSION=$(grep 'VERSION=\".*\"' codecov | cut -d'"' -f2);
for i in 1 256 512
do
  diff <(shasum -a $i codecov) <(curl -s "https://raw.githubusercontent.com/codecov/codecov-bash/${CODECOV_VERSION}/SHA${i}SUM") \
  || { echo "CodeCov checksum validation failed!" >&2; exit 1; }
done
bash codecov "$@"
