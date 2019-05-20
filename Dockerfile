FROM jupyter/scipy-notebook:7d427e7a4dde

LABEL maintainer="Ernesto Espinosa"

RUN conda update -n base conda && \
    conda install -y -c cvxgrp cvxpy cvxportfolio && \
    conda update -y numpy && \
    conda install -y quandl && \
    \
    conda install -y -c anaconda python-dateutil lxml && \
    conda install -y -c conda-forge requests-oauthlib && \
    pip install fitbit datascience okpy nbgitpuller nbinteract && \
    pip install git+https://github.com/okpy/jassign.git && \
    \
    jupyter serverextension enable --py nbgitpuller --sys-prefix
