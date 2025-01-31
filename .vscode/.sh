source ~/.bashrc
code=$(wslpath -u '\\wsl.localhost\Ubuntu-20.04\home\julio\.vscode-server\bin\138f619c86f1199955d53b4166bef66ef252935c\bin\remote-cli')
bash=$(wslpath -u '\\wsl.localhost\Ubuntu-20.04\usr\bin')
PATH=$code:$bash
