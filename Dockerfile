FROM python:3.8

RUN apt-get update && apt-get -y install libosmesa6-dev patchelf libegl1-mesa-dev && apt-get clean

