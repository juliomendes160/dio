# 1 Introdução ao Docker

```ps1 ~
\\wsl$

wsl --cd /home/julio/github/dio code .
wsl --cd ~/github/dio code .

wsl --list --verbose
wsl --list --online

wsl --install --distribution Ubuntu-20.04
wsl --unregister Ubuntu-20.04

wsl --set-default Ubuntu-20.04

wsl ~ --distribution Ubuntu-20.04 --user root
wsl ~ --distribution Ubuntu-20.04 --user julio
wsl --terminate Ubuntu-20.04

wsl --export Ubuntu-20.04 "G:\Meu Drive\Linux\Ubuntu-20.04.tar" 
wsl --import Ubuntu-20.04 "C:\Linux" "G:\Meu Drive\Linux\Ubuntu-20.04.tar"

ssh localhost | ssh julio@localhost | ssh root@localhost
exit
```

```bash wsl~# config
cat /etc/*release*

sudo apt -y update
sudo apt -y upgrade

sudo passwd --delete root
sudo passwd --delete julio

sudo nano /etc/wsl.conf
[user] 
default=julio

sudo nano /etc/ssh/sshd_config #PermitRootLogin yes #PasswordAuthentication yes #PermitEmptyPasswords yes
sudo service ssh status
sudo service ssh start
sudo service ssh stop
sudo service ssh restart

sudo ip a
```

## 1.1 Conhecendo e Instalando o Docker

https://docs.docker.com/engine/install/ubuntu/#install-using-the-convenience-script

```bash wsl~# docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh --version 20.10.7

sudo chmod -R 755 /var/lib/docker

systemctl status docker

docker version
```

## 1.2 Primeiros Passos com o Docker

https://hub.docker.com/

```bash wsl~# docker
docker --help

docker pull hello-world
docker run hello-world

docker run --name ubuntu -v /tmp/.X11-unix:/tmp/.X11-unix:rw -e DISPLAY=$DISPLAY -dit ubuntu:20.04
docker exec -it ubuntu bash
apt -y update
apt -y upgrade
docker cp get-docker.sh ubuntu:/
docker exec ubuntu ls /
docker cp ubuntu:/get-docker.sh .
exit

docker run --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=Senha123 -dit mysql:8.0.25
docker inspect mysql
docker exec -it mysql bash
mysql -u root -p --protocol=tcp
exit

apt -y install mysql-client
```

```bash wsl~# mysql
wget https://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community_8.0.25-1ubuntu20.04_amd64.deb
sudo apt -y install ./mysql-workbench-community_8.0.25-1ubuntu20.04_amd64.deb
sudo apt -y remove mysql-workbench-community
sudo apt -y purge mysql-workbench-community
sudo mysql-workbench --version
sudo mysql-workbench &

sudo apt -y install gnome-keyring
sudo apt -y remove gnome-keyring
sudo apt -y purge gnome-keyring
```

```bash
git submodule add -b heranca https://github.com/juliomendes160/dio.git heranca
git push --force
```
