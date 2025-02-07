#!/bin/bash
# /etc/sudoers

source ~/.bashrc

code=/root/.vscode-server/bin/cd4ee3b1c348a13bafd8f9ad8060705f6d4b9cba/bin/remote-cli:/home/julio/.vscode-server/bin/cd4ee3b1c348a13bafd8f9ad8060705f6d4b9cba/bin/remote-cli
git=/usr/bin
lampp=/opt/lampp
php=/opt/lampp/bin
PATH=$code:$git:$lampp:$php

source ~/github/dio/scripts/lampp.sh
source ~/github/dio/scripts/httpd.conf.sh
