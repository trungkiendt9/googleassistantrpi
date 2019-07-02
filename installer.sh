#!/bin/bash

# Install Packages
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install python3-dev python3-venv -y
python3 -m venv env
env/bin/python -m pip install --upgrade pip setuptools --upgrade
source env/bin/activate
python -m pip install --upgrade python -m pip install --upgrade https://github.com/googlesamples/assistant-sdk-python/releases/download/0.3.0/google_assistant_library-0.0.2-py2.py3-none-linux_armv7l.whl
python -m pip install --upgrade google-auth-oauthlib[tool]
# Authorize Google Assistant using Client Json File
# Below, replace “THE NAME OF THE DOWNLOADED CLIENT JSON FILE” with the exact name of the client file you downloaded from google (Making sure that the client json file is in the Downloads folder)
google-oauthlib-tool --client-secrets /home/pi/Downloads/THE NAME OF THE DOWNLOADED CLIENT JSON FILE --scope https://www.googleapis.com/auth/assistant-sdk-prototype --save --headless
exit 0
