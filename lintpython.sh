#!/bin/bash
export PATH=$HOME/.local/bin:$PATH
pip install --upgrade pip
pip install -r requirements.txt
pylint .

