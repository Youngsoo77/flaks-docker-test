From ubuntu:14.04
WorkDir /home
COPY requirements.txt ./
COPY hello.py ./
COPY entrypoint.sh ./

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y git

RUN echo alias python=python3 >> .bashrc
RUN source .bashrc

RUN apt-get install -y build-essential libssl-dev libffi-dev python-dev
RUN apt-get install -y python-pip

EXPOSE 5000
