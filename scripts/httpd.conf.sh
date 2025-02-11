#!/bin/bash

export ServerRoot='"/opt/lampp"'
export DocumentRoot='"/opt/lampp/htdocs"'
export Directory='"/opt/lampp/htdocs"'

export ServerRoot='"/opt/lampp"'
export DocumentRoot='"/home/julio/github/dio/htdocs"'
export Directory='"/home/julio/github/dio/htdocs"'

envsubst < ~/github/dio/templates/httpd.conf > /opt/lampp/etc/httpd.conf

lampp restart

# sudo ls -l $(wslpath -u '\\wsl.localhost\Ubuntu-20.04\opt\lampp\htdocs')
# if [ ! -L $(wslpath -u '\\wsl.localhost\Ubuntu-20.04\opt\lampp\htdocs') ]; then
#     lampp stop
#     sudo mv $(wslpath -u '\\wsl.localhost\Ubuntu-20.04\opt\lampp\htdocs2') $(wslpath -u '\\wsl.localhost\Ubuntu-20.04\opt\lampp\htdocs')
#     sudo ln -s $(wslpath -u '\\wsl.localhost\Ubuntu-20.04\home\julio\github\dio\htdocs') $(wslpath -u '\\wsl.localhost\Ubuntu-20.04\opt\lampp')
#     lampp start
# else
#     sudo unlink $(wslpath -u '\\wsl.localhost\Ubuntu-20.04\opt\lampp\htdocs')
# fi
