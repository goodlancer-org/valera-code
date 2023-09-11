# syntax=docker/dockerfile:1
FROM jupyter/scipy-notebook

USER root
RUN pip install opencv-python
RUN apt-get install v4l2-utils
USER 1000