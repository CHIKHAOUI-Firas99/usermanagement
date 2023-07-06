#!/bin/bash
export PATH=$HOME/.local/bin:$PATH
pip install --no-cache-dir --upgrade -r /requirements.txt
pip install python-jose
pip install python-dotenv
pylint main.py

