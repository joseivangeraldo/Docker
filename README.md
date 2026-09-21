Modelo :cliente \-- servidor:

Servidor fornece o serviço  e temos os clientes  
Requisição Http.  
CLiente faz requisições e o servidor manda de acordo com as permissões de acesso.

**INSTALACAO:**

**INICIAR SERVIDOR DOCKER:**  
sudo systemctl start docker  
ivan@ivan-Inspiron-3437:\~$ sudo docker run hello-world

Hello from Docker\!  
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:  
 1\. The Docker client contacted the Docker daemon.  
 2\. The Docker daemon pulled the "hello-world" image from the Docker Hub.  
	(amd64)  
 3\. The Docker daemon created a new container from that image which runs the  
	executable that produces the output you are currently reading.  
 4\. The Docker daemon streamed that output to the Docker client, which sent it  
	to your terminal.

To try something more ambitious, you can run an Ubuntu container with:  
 $ docker run \-it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:  
 https://hub.docker.com/

For more examples and ideas, visit:  
 https://docs.docker.com/get-started/  
   
 o generate this message, Docker took the following steps:  
 1\. The Docker client contacted the Docker daemon.  
 2\. The Docker daemon pulled the "hello-world" image from the Docker Hub.  
	(amd64)  
 3\. The Docker daemon created a new container from that image which runs the  
	executable that produces the output you are currently reading.  
 4\. The Docker daemon streamed that output to the Docker client, which sent it  
	to your terminal.

To try something more ambitious, you can run an Ubuntu container with:  
 $ docker run \-it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:  
 https://hub.docker.com/

For more examples and ideas, visit:  
 https://docs.docker.com/get-started/

ivan@ivan-Inspiron-3437:\~$ sudo groupadd docker  
groupadd: grupo 'docker' já existe  
ivan@ivan-Inspiron-3437:\~$ sudo usermod \-aG docker $USER  
ivan@ivan-Inspiron-3437:\~$ docker run hello-world  
permission denied while trying to connect to the docker API at unix:///var/run/docker.sock  
ivan@ivan-Inspiron-3437:\~$ docker images  
permission denied while trying to connect to the docker API at unix:///var/run/docker.sock  
ivan@ivan-Inspiron-3437:\~$ newgrp docker

**MOSTRA OS CONTAINERS QUE ESTÃO EM EXECUÇÃO;**  
ivan@ivan-Inspiron-3437:\~$ docker ps  
CONTAINER ID   IMAGE 	COMMAND   CREATED   STATUS	PORTS 	NAMES

**MOSTRA OS CONTAINERS QUE FORAM EXECUTADOS MAIS RECENTEMENTE:**  
ivan@ivan-Inspiron-3437:\~$ docker ps \-a  
CONTAINER ID   IMAGE     	COMMAND	CREATED      	STATUS                  	PORTS 	NAMES  
dc133a49b1e4   hello-world   "/hello"   13 minutes ago   Exited (0) 13 minutes ago         	agitated\_jang

**TRABALHANDO COM UBUNTU:**  
ivan@ivan-Inspiron-3437:\~$ docker pull ubuntu  
ivan@ivan-Inspiron-3437:\~$ docker run ubuntu sleep 1500

ivan@ivan-Inspiron-3437:\~$ docker ps \-a  
CONTAINER ID   IMAGE     	COMMAND    	CREATED      	STATUS                  	PORTS 	NAMES  
0cd05450a02d   ubuntu    	"sleep 1500"   52 seconds ago   Up 50 seconds                     	recursing\_haslett  
7dfb17e4e295   ubuntu    	"sleep 10" 	3 minutes ago	Exited (0) 2 minutes ago          	beautiful\_swartz  
dc133a49b1e4   hello-world   "/hello"   	22 minutes ago   Exited (0) 22 minutes ago         	agitated\_jang  
ivan@ivan-Inspiron-3437:\~$ docker stop recursing\_haslett  
recursing\_haslett  
ivan@ivan-Inspiron-3437:\~$ docker ps \-a  
CONTAINER ID   IMAGE     	COMMAND    	CREATED          	STATUS                   	PORTS 	NAMES  
0cd05450a02d   ubuntu    	"sleep 1500"   About a minute ago   Exited (137) 5 seconds ago         	recursing\_haslett  
7dfb17e4e295   ubuntu    	"sleep 10" 	3 minutes ago    	Exited (0) 3 minutes ago           	beautiful\_swartz  
dc133a49b1e4   hello-world   "/hello"   	23 minutes ago   	Exited (0) 23 minutes ago          	agitated\_jang

van@ivan-Inspiron-3437:\~$ docker run \-it ubuntu  
root@0c4318340f95:/\# ls  
bin   dev  home  lib64  mnt  proc  run   srv  tmp  var  
boot  etc  lib   media  opt  root  sbin  sys  usr  
root@0c4318340f95:/\# cat /etc/\*release\*  
DISTRIB\_ID=Ubuntu  
DISTRIB\_RELEASE=26.04  
DISTRIB\_CODENAME=resolute  
DISTRIB\_DESCRIPTION="Ubuntu 26.04 LTS"  
PRETTY\_NAME="Ubuntu 26.04 LTS"  
NAME="Ubuntu"  
VERSION\_ID="26.04"  
VERSION="26.04 LTS (Resolute Raccoon)"  
VERSION\_CODENAME=resolute  
ID=ubuntu  
ID\_LIKE=debian  
HOME\_URL="https://www.ubuntu.com/"  
SUPPORT\_URL="https://help.ubuntu.com/"  
BUG\_REPORT\_URL="https://bugs.launchpad.net/ubuntu/"  
PRIVACY\_POLICY\_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy"  
UBUNTU\_CODENAME=resolute  
LOGO=ubuntu-logo

**EXECUTAR CONTAINER E DEIXAR EM BACKGROUND**  
van@ivan-Inspiron-3437:\~$ docker ps  
CONTAINER ID   IMAGE 	COMMAND   	CREATED          	STATUS          	PORTS 	NAMES  
801f9e1c27ca   ubuntu	"/bin/bash"   About a minute ago   Up About a minute         	silly\_taussig  
ivan@ivan-Inspiron-3437:\~$ docker exec \-it 80 /bin/bash  
root@801f9e1c27ca:/\#

root@801f9e1c27ca:/\# apt \-y install nano

**REMOVER CONTAINERS :**  
docker rm 'numero\_container'

**REMOVER IMAGENS:**  
ivan@ivan-Inspiron-3437:\~$ docker rmi hello-world:latest

**DANDO NOME PARA CONTAINER:**  
ivan@ivan-Inspiron-3437:\~$ docker run \-dti \--name Ubuntu-A ubuntu

**A IMAGEM LATEST DO CENTOS ESTA DESCONTINUADA ENTAO BAIXOU A ULTIMA COM TAG:**  
ivan@ivan-Inspiron-3437:\~$ docker pull centos:centos7.9.2009

ivan@ivan-Inspiron-3437:\~$ docker run \-dti \--name CentOS-A centos:centos7.9.2009

ivan@ivan-Inspiron-3437:\~$ docker run \-dti \--name Ubuntu-B ubuntu

CONTAINER ID   IMAGE               	COMMAND   	CREATED          	STATUS          	PORTS 	NAMES  
4d3bbe062e53   ubuntu              	"/bin/bash"   33 seconds ago   	Up 31 seconds             	Ubuntu-B  
f6ecaa1536ed   centos:centos7.9.2009   "/bin/bash"   About a minute ago   Up About a minute         	CentOS-A  
4aff43b38864   ubuntu              	"/bin/bash"   12 minutes ago   	Up 12 minutes             	Ubuntu-A

**CRIAR PASTAS DE FORA DO DOCKER:**  
docker exec Ubuntu-A mkdir /destino  
**VER A LISTA DE ARQUIVOS:**  
ivan@ivan-Inspiron-3437:\~$ docker exec Ubuntu-A ls /

**COPIANDO ARQUIVOS MAQUINA/CONTAINER:**  
ivan@ivan-Inspiron-3437:\~/Documentos$ docker cp Arquivo.txt Ubuntu-A:/destino  
VER ARQUIVO NO CONTAINER:  
ivan@ivan-Inspiron-3437:\~/Documentos$ docker exec Ubuntu-A ls /destino \-l

ivan@ivan-Inspiron-3437:\~/Documentos$ zip Meuzip.zip \*.txt  
ivan@ivan-Inspiron-3437:\~/Documentos$ docker cp Meuzip.zip Ubuntu-A:/destino  
Successfully copied 4.61kB to Ubuntu-A:/destino  
root@4aff43b38864:/destino\# apt \-y install zip

**COPIANDO ARQUIVOS CONTAINER/MAQUINA:**  
ivan@ivan-Inspiron-3437:\~/Documentos$ docker cp Ubuntu-A:/destino/Meuzip.zip ZipCopia.zip

**TAGS:**  
ivan@ivan-Inspiron-3437:\~/Documentos$ docker pull debian:9  
ivan@ivan-Inspiron-3437:\~/Documentos$ docker run \-dti debian:9

**MYSQL:**  
ivan@ivan-Inspiron-3437:\~/Documentos$ docker pull mysql  
$ docker run \-e MYSQL\_ROOT\_PASSWORD=senha123 \--name mysql-A \-d \-p 3306:3306 mysql  
ivan@ivan-Inspiron-3437:\~/Documentos$ docker ps  
                                          	   
6141268a2f44   mysql 	"docker-entrypoint.s…"   About a minute ago   Up About a minute   0.0.0.0:3306-\>3306/tcp, \[::\]:3306-\>3306/tcp, 33060/tcp   mysql-A

bash-5.1\# mysql \-u root \-p \--protocol=tcp  
Enter password:

mysql\> CREATE DATABASE aula;

$ip a  
4: docker0: \<BROADCAST,MULTICAST,UP,LOWER\_UP\> mtu 1500 qdisc noqueue state UP group default  
	link/ether 8e:f7:af:2b:57:ac brd ff:ff:ff:ff:ff:ff  
	inet 172.17.0.1/16 brd 172.17.255.255 scope global docker0  
      
ivan@ivan-Inspiron-3437:\~/Documentos$ docker inspect mysql-A

ivan@ivan-Inspiron-3437:\~/Documentos$ sudo apt \-y install mysql-client  
ivan@ivan-Inspiron-3437:\~$ mysql \-u root \-p \--protocol=tcp \--port=3306

**INSTALAR CLIENTE MYSQL:**

**ACESSANDO UM CONTAINER EXTERNAMENTE:**  
docker0: \<BROADCAST,MULTICAST,UP,LOWER\_UP\> mtu 1500 qdisc noqueue state UP group default   
    link/ether fa:7e:4b:1e:9f:d8 brd ff:ff:ff:ff:ff:ff  
    inet 172.17.0.1/16 brd 172.17.255.255 scope global docker0  
       valid\_lft forever preferred\_lft forever  
    inet6 fe80::f87e:4bff:fe1e:9fd8/64 scope link   
       valid\_lft forever preferred\_lft forever

ivan@ivan-Inspiron-3437:\~$ mysql \-u root \-p \--protocol=tcp \--port=3306  
Enter password:   
ivan@ivan-Inspiron-3437:\~$ docker inspect mysql-A

CREATE TABLE alunos(  
	AlunoID int,  
	Nome varchar(50),  
	Sobrenome varchar(50),  
	Endereco varchar(150),  
	Cidade varchar(50)  
);  
INSERT INTO alunos(AlunoID, Nome, Sobrenome,Endereco, Cidade) VALUES(1, 'Carlos Alberto', 'da Silva', 'Av que sobe e desce e ninguem conhece', 'Manaus');

**MONTAR BANCO DE DADOS COM DADOS PERSISTENTES VOLUMES:**  
ivan@ivan-Inspiron-3437:\~/data/mysql-A$ docker run \-e MYSQL\_ROOT\_PASSWORD=senha123 \--name mysql-A \-d \-p 3306:3306 \--volume=/data/mysql-A:/var/lib/mysql mysql

**TIPOS DE MOUNT BIND, NAMED, DOCKER VOLUME**  
docker run \-dti \--mount type=bind,src=/home/ivan/data/debian-A,dst=/data debian:9   
**PARA O CONTAINER NÃO PODER ALTERAR SOMENTE LEITURA:**  
docker run \-dti \--mount type=bind,src=/home/ivan/data/debian-A,dst=/data,ro debian:9   
ivan@ivan-Inspiron-3437:\~$ docker exec \-ti dreamy\_hertz bash  
**VOLUMES:**  
ivan@ivan-Inspiron-3437:\~/data/debian-A$ docker volume ls  
DRIVER    VOLUME NAME  
local     681570cde5090cedfe6d94cc726d30b3f2faeaf232cc5cb06c285a94f81e76ff  
local     4617855a262713b4c70b11708f63e9e7533abaae92cb7046ea9ff1c23c7d6091  
local     7530323eaeff58981944a565f3f1b9c17b57e94fde0b987d01e76e9610b48985  
local     fd4b7cf7e5586c265bb4f87a139a0ec5c15b03a5d5f1f36ce6205e9980a4594f  
ivan@ivan-Inspiron-3437:\~/data/debian-A$ docker volume create data-debian

ivan@ivan-Inspiron-3437:\~/data/debian-A$ docker volume ls  
DRIVER    VOLUME NAME  
local     681570cde5090cedfe6d94cc726d30b3f2faeaf232cc5cb06c285a94f81e76ff  
local     4617855a262713b4c70b11708f63e9e7533abaae92cb7046ea9ff1c23c7d6091  
local     7530323eaeff58981944a565f3f1b9c17b57e94fde0b987d01e76e9610b48985  
local     data-debian  
local     fd4b7cf7e5586c265bb4f87a139a0ec5c15b03a5d5f1f36ce6205e9980a4594f  
ivan@ivan-Inspiron-3437:\~/data/debian-A$   
root@ivan-Inspiron-3437:/var/lib/docker/volumes\# cd data-debian/  
root@ivan-Inspiron-3437:/var/lib/docker/volumes/data-debian\# ls  
\_data  
root@ivan-Inspiron-3437:/var/lib/docker/volumes/data-debian\# cd \_data/  
root@ivan-Inspiron-3437:/var/lib/docker/volumes/data-debian/\_data\# ls  
root@ivan-Inspiron-3437:/var/lib/docker/volumes/data-debian/\_data\# touch arquivo1.txt  
root@ivan-Inspiron-3437:/var/lib/docker/volumes/data-debian/\_data\# touch arquivo2.txt  
root@ivan-Inspiron-3437:/var/lib/docker/volumes/data-debian/\_data\# ls  
arquivo1.txt  arquivo2.txt  
root@ivan-Inspiron-3437:/var/lib/docker/volumes/data-debian/\_data\#  
**MONTANDO VOLUME DENTRO DO CONTAINER;**  
root@ivan-Inspiron-3437:/var/lib/docker/volumes/data-debian/\_data\# docker run \-dti \--name debian-A \--mount type=volume,src=data-debian,dst=/data debian:9  
**REMOVER VOLUME, NENHUM CONTAINER PODE ESTAR USANDO:**  
ivan@ivan-Inspiron-3437:\~/data/debian-A$ docker volume rm data-debian

**MOUNT CONCLUSÃO:**  
ivan@ivan-Inspiron-3437:\~/data/debian-A$ docker volume create centos-A  
ivan@ivan-Inspiron-3437:\~/data/debian-A$ docker run \-dti \--name centos-A \--mount type=volume,src=centos-A,dst=/data centos:centos7.9.2009

$ docker rm \-f ‘NOME\_CONTAINER’  (VAI EXCLUIR DIRETO CONTAINER SEM PRECISAR PARAR)  
$ docker container prune (REMOVE TODOS CONTAINERS MESMO OS PARADOS)  
$ docker volume prune ( exclui direto o voulume- usar com prudencia)

**EXEMPLO APACHE CONTAINER:**  
Imagem Dockerhub:  docker pull httpd

ivan@ivan-Inspiron-3437:\~/data$ mkdir /data/apache-A

### How to use this image.This image only contains Apache httpd with the defaults from upstream. There is no PHP installed, but it should not be hard to extend. On the other hand, if you just want PHP with Apache httpd see the [PHP image](https://hub.docker.com/_/php/) and look at the `-apache` tags. If you want to run a simple HTML server, add a simple Dockerfile to your project where `public-html/` is the directory containing all your HTML.

##### Create a `Dockerfile` in your project

`FROM httpd:2.4`  
`COPY ./public-html/ /usr/local/apache2/htdocs/`

Then, run the commands to build and run the Docker image:

`$ docker build -t my-apache2 .`  
`$ docker run -dit --name my-running-app -p 8080:80 my-apache2`  
Visit [http://localhost:8080](http://localhost:8080/) and you will see It works\!

**NÃO ESQUECER QUE TEM DE SER O CAMINHO ABSOLUTO DA MAQUINA LOCAL**

docker run \--name apache-A \-d \-p 80:80 \--volume=/home/ivan/data/apache-A:/usr/local/apache2/htdocs/ httpd

0f4d255c2dd7cff04f152d1e4c07a4921aae70c76e4577d1c4d7182f8db82b4e

ivan@ivan-Inspiron-3437:\~$ docker ps

CONTAINER ID   IMAGE     COMMAND              CREATED          STATUS         PORTS                                 NAMES

0f4d255c2dd7   httpd     "httpd-foreground"   11 seconds ago   Up 7 seconds   0.0.0.0:80-\>80/tcp, \[::\]:80-\>80/tcp   apache-A

**EXEMPLO PHP- APACHE**

`docker pull php:7.2-apache`  
van@ivan-Inspiron-3437:\~$ docker run \--name php-A \-d \-p 8080:80 \--volume=/home/ivan/data/php-A:/var/www/html php:7.2-apache

ivan@ivan-Inspiron-3437:\~$ docker ps

**LIMITANDO MEMÓRIA E CPU:**  
$ docker stats php-A  
ONTAINER ID   NAME      CPU %     MEM USAGE / LIMIT     MEM %     NET I/O           BLOCK I/O        PIDS   
b262167446e0   php-A     0.01%     10.81MiB / 15.52GiB   0.07%     8.11kB / 74.2kB   8.19kB / 4.1kB   7 

ivan@ivan-Inspiron-3437:\~$ docker update php-A \-m 128M \--cpus 0.2  
Error response from daemon: Cannot update container b262167446e0b921f545cdf7332d859b37c9c4b1b3a098fd34c8fccdd315a981: Memory limit should be smaller than already set memoryswap limit, update the memoryswap at the same time

 **PARA EVITAR CONFLITO COM A MEMORIA SWAP:**  
ivan@ivan-Inspiron-3437:\~$ docker update \--memory 512m \--memory-swap 1g php-A \--cpus 0.2  
CONTAINER ID   NAME      CPU %     MEM USAGE / LIMIT   MEM %     NET I/O           BLOCK I/O        PIDS   
b262167446e0   php-A     0.01%     10.81MiB / 512MiB   2.11%     8.39kB / 74.2kB   8.19kB / 4.1kB   7

**INSTALANDO STRESS PARA STRESSAR A CPU:**  
ivan@ivan-Inspiron-3437:\~$ docker exec \-ti ubuntu-C bash  
root@3123334aaf49:/\# apt update  
root@3123334aaf49:/\# apt \-y install stress  
root@3123334aaf49:/\# stress \--cpu 1 \--vm-bytes 50m \--vm 1 \--vm-bytes 50m

**INFORMAÇÕES LOGS E PROCESSOS:**  
ivan@ivan-Inspiron-3437:\~$ docker info  
ivan@ivan-Inspiron-3437:\~$ docker container top ubuntu-C  
UID                 PID                 PPID                C                   STIME               TTY                 TIME                CMD  
root                7420                7398                0                   17:45               pts/0               00:00:00            /bin/bash  
ivan@ivan-Inspiron-3437:\~$ docker network ls  
NETWORK ID     NAME      DRIVER    SCOPE  
ad7c160f7809   bridge    bridge    local  
664a46a4549f   host      host      local  
8f2ac2111f10   none      null      local

**REDES:**  
**INSTALAR PING, PORQUE NOVAS INSTALAÇÕES LINUX POR PADRÃO NÃO VEM:**  
root@3123334aaf49:/\# apt update  
root@3123334aaf49:/\# apt-get install \-y iputils-ping  
**É ÚTIL PARA ISOLAR OS CONTAINERS QUE NÃO QUER SE COMUNIQUE COM OUTROS:**  
ivan@ivan-Inspiron-3437:\~$ docker network create minha-rede  
ivan@ivan-Inspiron-3437:\~$ docker run \-dti \--name Ubuntu-A \--network minha-rede ubuntu  
ivan@ivan-Inspiron-3437:\~$ docker network inspect minha-rede  
ivan@ivan-Inspiron-3437:\~$ docker run \-dti \--name Ubuntu-B \--network minha-rede ubuntu

ivan@ivan-Inspiron-3437:\~$ docker exec \-ti Ubuntu-A bash  
root@b2c40e11e782:/\# ping 172.18.0.2  
**REMOVER A REDE:**  
ivan@ivan-Inspiron-3437:\~$ docker network rm minha-rede

**DEFINIÇÃO E CRIAÇÃO DE UM DOCKERFILE;**  
root@a5a1bc1769c2:/\# apt update  
root@a5a1bc1769c2:/\# apt install \-y python3 nano  
root@a5a1bc1769c2:/\# apt clean  
ivan@ivan-Inspiron-3437:\~$ docker exec \-ti ubuntu-python python3 /opt/[app.py](http://app.py)

**EXEMPLO Dockerfile:**  
FROM ubuntu

RUN apt update && apt install \-y python3 && apt clean

COPY app.py /opt/app.py

CMD python3 /opt/[app.py](http://app.py)

**EXECUTAR:**  
ivan@ivan-Inspiron-3437:\~/images/ubuntu-python$ docker build . \-t ubuntu-python  
**RODAR APLICAÇÃO;**  
ivan@ivan-Inspiron-3437:\~/images/ubuntu-python$ docker run \-ti \--name meu-app ubuntu-python

**CRIANDO UMA IMAGEM PERSONALIZADA NO APACHE:**  
Arquivos do site, tem de compactar no formato tar, porque o comando add, do docker só aceita este formato   
**ivan@ivan-Inspiron-3437:\~/data/debian-apache$ tar \-czf site.tar ./**

ivan@ivan-Inspiron-3437:\~/data/debian-apache$ docker image build \-t debian-apache:1.0 .  
**VAI EXIBIR ESTA MENSAGEM SE OCORRER TUDO BEM:**  
Successfully tagged debian-apache:1.0

You can use **docker buildx build** as a drop-in replacement for docker build.

**Buildx** is a Docker CLI plugin that extends the standard build capabilities with full support for **Moby BuildKit** features. It allows you to build multi-platform images, share build caches across networks, and use advanced isolation features.

Quick Aliasing

If you want to use your usual docker build command but have it run via buildx automatically, you can enable the Buildx override by running:

bash  
docker buildx install  
docker buildx build \-t my-image:latest \--load .

**EXECUTANDO O CONTAINER DA IMAGEM PERSONALIZADA NO APACHE:**  
ivan@ivan-Inspiron-3437:\~/data/debian-apache$ docker run \-dti \-p 80:80 \--name meu-apache debian-apache:1.0

**Criando imagens personalizadas a partir de imagens de liguagens de programação**  
ivan@ivan-Inspiron-3437:\~/data/python$ docker image build \-t app-python:1.0 .  
ivan@ivan-Inspiron-3437:\~/data/python$ docker run \-ti \--name runapp1 app-python:1.0  
Digite seu nomeIvan  
Ivan

**Gerando uma imagem MULTISTAGE**  
**Usando imagens dockers:golang e alpine**  
ivan@ivan-Inspiron-3437:\~/data/go$ docker image build \-t app-go:1.0 .

ivan@ivan-Inspiron-3437:\~/data/go$ docker run \-ti \--name meuappOK app-go:1.0  
Qual seu nome?  
Ivan  
Olá, Ivan\! Seja bem-vindo.

**Realizando o upload de imagens para o Hub do Docker**

                  
