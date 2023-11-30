Урок 4. Подключение сторонних репозиториев, ручная установка пакетов

Задание

1. Подключить дополнительный репозиторий на выбор: Docker, Nginx, Oracle MySQL. Установить любой пакет из этого репозитория.

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

5. *Подключить PPA-репозиторий на выбор. Установить из него пакет. Удалить PPA из системы.

6. *Создать задачу резервного копирования (tar) домашнего каталога пользователя. Реализовать с использованием пользовательских crontab-файлов.


