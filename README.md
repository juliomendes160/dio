# 1 Introdução ao Docker

## 1.1 Conhecendo e Instalando o Docker

\\wsl$

```ps1
wsl --list --online
wsl --list --verbose
wsl --install --distribution Ubuntu-20.04
wsl --unregister Ubuntu-20.04
wsl --set-default Ubuntu-20.04
wsl ~ --distribution Ubuntu-20.04 --user root
wsl ~ --distribution Ubuntu-20.04 --user julio
wsl --terminate Ubuntu-20.04
wsl --export Ubuntu-20.04 "G:\Meu Drive\Linux\Ubuntu-20.04.tar"
wsl --import Ubuntu-20.04 "C:\Linux" "G:\Meu Drive\Linux\Ubuntu-20.04.tar"
```

```bash
sudo nano /etc/wsl.conf 
[user] 
default=julio
sudo passwd --delete root
sudo passwd --delete julio
sudo apt -y update
sudo apt -y upgrade

sudo nano /etc/ssh/sshd_config #PermitRootLogin yes #PasswordAuthentication yes #PermitEmptyPasswords yes
sudo service ssh status
sudo service ssh start
sudo service ssh stop
sudo service ssh restart
sudo ip address
```

```ps1
ssh localhost | ssh julio@172.20.27.133 | wsl ~ --distribution Ubuntu-20.04 --user julio
exit
ssh root@localhost | ssh root@172.20.27.133 | wsl ~ --distribution Ubuntu-20.04 --user root
```

```bash
cat /etc/*release*
```

https://docs.docker.com/engine/install/ubuntu/#install-using-the-convenience-script

```bash
curl -fsSL https://get.docker.com -o get-docker.sh
ls
ls -l
sh get-docker.sh --version 20.10.7
docker version
systemctl status docker
```

```bash
git submodule add -b heranca https://github.com/juliomendes160/dio.git heranca
git push --force
```
