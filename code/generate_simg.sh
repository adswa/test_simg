#!/bin/sh

set -e

# Generate a singularity image with Neurodocker

docker run --rm kaczmarj/neurodocker:master generate singularity \
--base neurodebian:stretch-non-free \
--pkg-manager apt \
--install python3-sklearn python3-seaborn python3-pandas datalad \
> envs/Singularity.1
