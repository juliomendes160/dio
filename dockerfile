FROM ubuntu:20.04

RUN \
    # atualizar pacotes
    apt -y update && \
    apt -y upgrade && \
    
    # wget
    apt -y install wget && \

    # code [--version | &]
    wget https://vscode.download.prss.microsoft.com/dbazure/download/stable/cd4ee3b1c348a13bafd8f9ad8060705f6d4b9cba/code_1.96.4-1736991114_amd64.deb && \
    apt -y install ./code_1.96.4-1736991114_amd64.deb && \

    # sudo mysql-workbench [--version | &]
    wget https://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community_8.0.25-1ubuntu20.04_amd64.deb && \
    apt -y install ./mysql-workbench-community_8.0.25-1ubuntu20.04_amd64.deb && \
    
    # gnome-keyring
    apt -y install gnome-keyring
    
    # limpar pacotes
    # apt -y autoremove && \
    # apt -y clean
