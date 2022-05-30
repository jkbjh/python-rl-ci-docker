FROM python:3.8

RUN apt-get update && apt-get -y install libosmesa6-dev patchelf libegl1-mesa-dev && apt-get clean
RUN pip install --upgrade pip &&\
    pip install nox &&\
    pip install virtualenv &&\
    virtualenv venv &&\
    bash -c 'yes 1 | bash <(curl  -Ls "https://gist.githubusercontent.com/jkbjh/c83e5bf6d708f590f77ccdd6b2ef0a40/raw/mujoco-210-user-install.sh?$(date +%s)")'
