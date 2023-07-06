#!/bin/bash
pip install --upgrade pip
pip install -r requirements.txt
export PATH=$HOME/.local/bin:$PATH
pylint main.py

