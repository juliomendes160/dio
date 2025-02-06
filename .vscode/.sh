#!/bin/bash
# /root/.vscode-server/data/Machine/settings.json

source ~/.bashrc

lampp=/opt/lampp
code=/home/julio/.vscode-server/bin/138f619c86f1199955d53b4166bef66ef252935c/bin/remote-cli
system=/usr/bin
PATH=$lampp:$code:$system

source ~/github/dio/scripts/lampp.sh
source ~/github/dio/scripts/httpd.conf.sh
