#!/bin/bash

python3 -m venv ~/.somevenv
source ~/.somevenv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
pip install pylint
pylint main.py

