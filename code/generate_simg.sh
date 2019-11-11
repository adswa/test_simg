#!/bin/sh

set -e

# Generate a singularity image with Neurodocker

docker run --rm kaczmarj/neurodocker:master generate singularity \
--base neurodebian:stretch-non-free \
--pkg-manager apt \
--miniconda create_env=python \
            conda_install="python=3.7 traits" \
            pip_install="seaborn pandas datalad sklearn" \
> envs/Singularity.1.1
