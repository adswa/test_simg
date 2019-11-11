#!/bin/sh

set -e

# Generate a singularity image with Neurodocker

docker run --rm kaczmarj/neurodocker:master generate singularity \
--base neurodebian:stretch-non-free \
--pkg-manager apt \
--install python-sklearn python-seaborn python-pandas datalad \
> envs/Singularity.1
