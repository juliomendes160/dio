# 1 Introdução ao Docker

## 1.1 Conhecendo e Instalando o Docker

## 1.2 Primeiros Passos com o Docker

## 1.3 Armazenamento de Dados com Docker

## 1.4 Processamento, Logs e Rede com Docker

# 2 Docker File e Docker Compose

## 2.1 Definição e Criação de um Docker File
2.1.1 Primeiro Docker File
2.1.2 Criando uma imagem personalizada do Apache
2.1.3 Criando imagens personalizadas a partir de imagens de liguagens de programação
2.1.4 Gerando uma imagem MULTISTAGE
2.1.5 Realizando o upload de imagens para o Hub do Docker
2.1.6 Registry Criando um servidor de imagens

\\wsl$

```ps1~
wsl -d Ubuntu-20.04 --cd /home/julio/github/dio code .
wsl -d Ubuntu-20.04 --cd ~/github/dio code .

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
```

```wsl~
sudo apt -y update
sudo apt -y upgrade

sudo passwd --delete root
sudo passwd --delete julio

sudo nano /etc/wsl.conf
[user]
default=julio

cat /etc/*release*
ip a
```

```wsl~
sudo nano /etc/ssh/sshd_config #PermitRootLogin yes #PasswordAuthentication yes #PermitEmptyPasswords yes
sudo service ssh status
sudo service ssh start
sudo service ssh stop
sudo service ssh restart
```

```ps1~
ssh localhost | ssh julio@localhost | ssh root@localhost
exit
```

https://hub.docker.com/

https://docs.docker.com/engine/install/ubuntu/#install-using-the-convenience-script

```wsl~
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh --version 20.10.7
systemctl status docker
docker version

sudo usermod -aG docker $USER
newgrp docker
sudo chmod -R 755 /var/lib/docker
```

```wsl~
docker build -t dockerfile . 
docker run --name dockerfile -v /tmp/.X11-unix:/tmp/.X11-unix:rw -e DISPLAY=$DISPLAY -dit dockerfile
docker inspect ubuntu
docker exec -w / -it dockerfile bash
docker exec -it dockerfile sh -c "cd ~ && bash"
```

```bash wsl~# docker
docker --help
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

```bash
git submodule add -b heranca https://github.com/juliomendes160/dio.git heranca
git push --force
```
