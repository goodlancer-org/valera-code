# syntax=docker/dockerfile:1
FROM jupyter/scipy-notebook

USER root
RUN pip install opencv-python solara
USER 1000