FROM jupyter/minimal-notebook

MAINTAINER jordan <jo357@cam.ac.uk>

USER root

RUN apt-get update -y

RUN apt-get upgrade -y

RUN conda install -y numpy scipy matplotlib bokeh ipywidgets

RUN jupyter nbextension enable --py --sys-prefix widgetsnbextension

ADD ./pycav_install.py ./pycav_install.py

RUN python pycav_install.py

RUN rm pycav_install.py

USER jovyan

RUN git clone https://github.com/pycav/demos.git /home/jovyan/work/
