#!/bin/bash
# sudo nano /etc/sudoers

source ~/.bashrc

code=/root/.vscode-server/bin/*/bin/remote-cli:/home/julio/.vscode-server/bin/*/bin/remote-cli
git=/usr/bin
lampp=/opt/lampp
php=/opt/lampp/bin
PATH=$code:$git:$lampp:$php

source ~/github/dio/scripts/lampp.sh
source ~/github/dio/scripts/httpd.conf.sh
