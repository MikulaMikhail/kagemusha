#!/bin/sh

#set -xe

VIRTENV=venv

if [-d $VIRTENV ]; then
  python3 -m venv $VIRTENV
fi

. ./$VIRTENV/bin/activate
pip install --upgrade pip
pip install -r requirements.txt

python3 main.py

deactivate
