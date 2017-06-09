#!/bin/bash
echo 'Step 2 of 2 - Install Dokku';
wget https://raw.githubusercontent.com/dokku/dokku/v0.9.4/bootstrap.sh;
sudo DOKKU_TAG=v0.9.4 bash bootstrap.sh
echo 'Installation Complete, now visit IP configured in the browser'
