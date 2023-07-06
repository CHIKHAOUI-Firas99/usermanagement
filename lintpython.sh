#!/bin/bash
pip install --upgrade pip
pip install -r requirements.txt
export pylint=$PATH:/var/lib/jenkins/.local/lib/python3.8/site-packages
pylint main.py

