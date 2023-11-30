Урок 4. Подключение сторонних репозиториев, ручная установка пакетов

Задание

1. Подключить дополнительный репозиторий на выбор: Docker, Nginx, Oracle MySQL. Установить любой пакет из этого репозитория.
fox@love-linux:/$ sudo apt-get update
fox@love-linux:/$ sudo apt-get install ca-certificates curl gnupg
fox@love-linux:/$ sudo install -m 0755 -d /etc/apt/keyrings01
fox@love-linux:/$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
fox@love-linux:/$ sudo chmod a+r /etc/apt/keyrings/docker.gpg
fox@love-linux:/$ echo \
>   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
>   $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
/apt/sou>   sudo tee /etc/apt/sources.list.d/docker.list > /dev/nullecho \
chitect>   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
 $(. /etc/o>   $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
>   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
fox@love-linux:/$ sudo apt-get update
fox@love-linux:/$  sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
fox@love-linux:/$ sudo docker run hello-world
Unable to find image 'hello-world:latest' locally
latest: Pulling from library/hello-world
719385e32844: Pull complete
Digest: sha256:c79d06dfdfd3d3eb04cafd0dc2bacab0992ebc243e083cabe208bac4dd7759e0
Status: Downloaded newer image for hello-world:latest

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://hub.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/get-started/

2. Установить и удалить deb-пакет с помощью dpkg.
fox@love-linux:~/Downloads$ ll
total 90344
drwxr-xr-x  2 fox fox     4096 Nov 30 16:03 ./
drwxr-x--- 16 fox fox     4096 Nov 30 15:23 ../
-rw-rw-r--  1 fox fox 92495960 Nov 30 16:03 discord-0.0.36.deb
fox@love-linux:~/Downloads$ sudo dpkg -i discord-0.0.36.deb
Selecting previously unselected package discord.
(Reading database ... 188715 files and directories currently installed.)
Preparing to unpack discord-0.0.36.deb ...
Unpacking discord (0.0.36) ...
Setting up discord (0.0.36) ...
Processing triggers for mailcap (3.70+nmu1ubuntu1) ...
Processing triggers for gnome-menus (3.36.0-1ubuntu3) ...
Processing triggers for desktop-file-utils (0.26-1ubuntu3) ...
fox@love-linux:~/Downloads$ sudo apt -f install
fox@love-linux:~$ apt list discord
Listing... Done
discord/now 0.0.36 amd64 [installed,local]
fox@love-linux:~$ sudo dpkg -r discord
(Reading database ... 188806 files and directories currently installed.)
Removing discord (0.0.36) ...
Processing triggers for mailcap (3.70+nmu1ubuntu1) ...
Processing triggers for gnome-menus (3.36.0-1ubuntu3) ...
Processing triggers for desktop-file-utils (0.26-1ubuntu3) ...
fox@love-linux:~$ sudo apt autoremove
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
0 upgraded, 0 newly installed, 0 to remove and 2 not upgraded.
fox@love-linux:~$ 

3. Установить и удалить snap-пакет.
fox@love-linux:~$ snap search steam
Name                       Version     Publisher        Notes  Summary
steam                      1.0.0.78    canonical✓       -      Launcher for the Steam software distribution service
fox@love-linux:~$ sudo snap install steam
steam 1.0.0.78 from Canonical✓ installed
fox@love-linux:~$ sudo snap remove steam
steam removed
fox@love-linux:~$ 

4. Добавить задачу для выполнения каждые 3 минуты (создание директории, запись в файл).
fox@love-linux:~$ cd /etc
fox@love-linux:/etc$




5. *Подключить PPA-репозиторий на выбор. Установить из него пакет. Удалить PPA из системы.

6. *Создать задачу резервного копирования (tar) домашнего каталога пользователя. Реализовать с использованием пользовательских crontab-файлов.
fox@love-linux:/$ crontab -e
no crontab for fox - using an empty one
crontab: installing new crontab
fox@love-linux:/$ crontab -l
# Edit this file to introduce tasks to be run by cron.
#
# Each task to run has to be defined through a single line
# indicating with different fields when the task will be run
# and what command to run for the task
#
# To define the time you can provide concrete values for
# minute (m), hour (h), day of month (dom), month (mon),
# and day of week (dow) or use '*' in these fields (for 'any').
#
# Notice that tasks will be started based on the cron's system
# daemon's notion of time and timezones.
#
# Output of the crontab jobs (including errors) is sent through
# email to the user the crontab file belongs to (unless redirected).
#
# For example, you can run a backup of all your user accounts
# at 5 a.m every week with:
# 0 5 * * 1 tar -zcf /var/backups/home.tgz /home/
0 18 * * 1 tar -zcf /var/backups/home.tgz /home/
#
# For more information see the manual pages of crontab(5) and cron(8)
#
# m h  dom mon dow   command
fox@love-linux:/$
