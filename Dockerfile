# syntax=docker/dockerfile:1
FROM jupyter/scipy-notebook

USER root
RUN pip install opencv-python
USER 1000