#!/bin/bash
pip3 install -r requirements.txt
pip3 install --upgrade celery[redis]

FLASK_APP=hello.py

python3 hello.py
