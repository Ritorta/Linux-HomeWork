# Этот репозиторий содержит работы по: Операционные системы и виртуализация Linux (MainLinux) и Контейнеризация - (Containerization)

# //----//----//MainLinux//----//----//

# Урок 1. Установка ОС Ubuntu в виртуальной машине. Работа в SSH-клиенте

### 1. Установить Ubuntu Desktop 22.04 в виртуальную машину.

### 2. Установить гостевые дополнения ОС.

### 3. Установить Midnight Commander.

### 4. Установить SSH-соединение с виртуальной машиной из хостовой.

# Урок 2. Работа с файлами и ссылками

### 1. Используя команду cat, создать два файла с данными, а затем объединить их.
Просмотреть содержимое созданного файла.
Переименовать файл, дав ему новое имя.

### 2. Создать несколько файлов.
Создать директорию, переместить файл туда.
Удалить все созданные в этом и предыдущем задании директории и файлы.

### 3. Создать файл file1 и наполнить его произвольным содержимым.
Скопировать его в file2.
Создать символическую ссылку file3 на file1.
Создать жёсткую ссылку file4 на file1.
Посмотреть, какие айноды у файлов.
Удалить file1.
Что стало с остальными созданными файлами?
Попробовать вывести их на экран.

### 4. Дать созданным файлам другие, произвольные имена.
Создать новую символическую ссылку.
Переместить ссылки в другую директорию.

# Урок 3. Права доступа и безопасность

### 1. Создать два произвольных файла.
Первому присвоить права на чтение и запись для владельца и группы, только на чтение — для всех.
Второму присвоить права на чтение и запись только для владельца. Сделать это в численном и символьном виде.

### 1-2. Управление пользователями:
	* создать пользователя, используя утилиту useradd и adduser;
	* удалить пользователя, используя утилиту userdel.

### 1-3. Управление группами:

    создать группу с использованием утилит groupadd и addgroup;
    попрактиковаться в смене групп у пользователей;
    добавить пользователя в группу, не меняя основной;

### 1-4. Назначить новых владельца и группу для директории целиком.

### 2. Создать пользователя с правами суперпользователя. Сделать так, чтобы sudo не требовал пароль для выполнения команд.

### 3. Дополнительные (необязательные) задания
### 3-1. Используя дополнительные материалы, выдать одному из созданных пользователей право на выполнение ряда команд, требующих прав суперпользователя (команды выбираем на своё усмотрение).

### 3-2. Создать группу developer и нескольких пользователей, входящих в неё.
Создать директорию для совместной работы.
Сделать так, чтобы созданные одними пользователями файлы могли изменять другие пользователи этой группы.

### 3-3. Создать в директории для совместной работы поддиректорию для обмена файлами, но чтобы удалять файлы могли только их создатели.

### 3-4. Создать директорию, в которой есть несколько файлов.
Сделать так, чтобы открыть файлы можно было, только зная имя файла, а через ls список файлов посмотреть было нельзя.

# Урок 4. Подключение сторонних репозиториев, ручная установка пакетов

### 1. Подключить дополнительный репозиторий на выбор: Docker, Nginx, Oracle MySQL. Установить любой пакет из этого репозитория.

### 2. Установить и удалить deb-пакет с помощью dpkg.

### 3. Установить и удалить snap-пакет.

### 4. Добавить задачу для выполнения каждые 3 минуты (создание директории, запись в файл).

### 5. *Подключить PPA-репозиторий на выбор. Установить из него пакет. Удалить PPA из системы.

### 6. *Создать задачу резервного копирования (tar) домашнего каталога пользователя. Реализовать с использованием пользовательских crontab-файлов.

# Урок 5. Настройка сети в Linux. Работа с IPtables

### 1. Настроить статическую конфигурацию (без DHCP) в Ubuntu через ip и netplan.
Настроить IP, маршрут по умолчанию и DNS-сервера (1.1.1.1 и 8.8.8.8).
Проверить работоспособность сети.

### 2. Настроить правила iptables для доступности сервисов на TCP-портах 22, 80 и 443.
Также сервер должен иметь возможность устанавливать подключения к серверу обновлений.
Остальные подключения запретить.

### 3. Запретить любой входящий трафик с IP 3.4.5.6.

### 4*. Запросы на порт 8090 перенаправлять на порт 80 (на этом же сервере).

### 5*. Разрешить подключение по SSH только из сети 192.168.0.0/24.

# Урок 6. Запуск стека для веб-приложения

### 1. Установить Nginx и настроить его на работу с PHP-FPM.

### 2. Установить Apache. Настроить обработку PHP. Добиться одновременной работы с Nginx.

### 3. Настроить схему обратного прокси для Nginx (динамика - на Apache).

### 4. Установить MySQL. Создать новую базу данных и таблицу в ней.

### 5*. Установить пакет phpmyadmin и запустить его веб-интерфейс для управления MySQL.

### 6*. Настроить схему балансировки трафика между несколькими серверами Apache на стороне Nginx с помощью модуля ngx_http_upstream_module.

# Урок 7. Запуск веб-приложения из контейнеров

### 1. Установить в виртуальную машину или VDS Docker.
1.1 Настроить набор контейнеров через docker compose по инструкции
(https://www.digitalocean.com/community/tutorials/how-to-install-wordpress-with-docker-compose-ru).
(Часть с настройкой certbot и HTTPS опустить, если у вас нет настоящего домена и белого IP.)

### 2*. Запустить два контейнера, связанные одной сетью (используя документацию).
Первый контейнер БД (например, образ mariadb:10.8), второй контейнер — phpmyadmin.
Получить доступ к БД в первом контейнере через второй контейнер (веб-интерфейс phpmyadmin).

# Урок 8. Скрипты Bash 

### 1. Написать скрипт очистки директорий.
На вход принимает путь к директории.
Если директория существует, то удаляет в ней все файлы с расширениями .bak, .tmp, .backup.
Если директории нет, то выводит ошибку.

### 2*. Создать скрипт ownersort.sh, который в заданной папке копирует файлы в директории, 
названные по имени владельца каждого файла.
Учтите, что файл должен принадлежать соответствующему владельцу.

# //----//----//Containerization//----//----//

# Урок 1. Механизмы пространства имен

### 1. Необходимо продемонстрировать изоляцию одного и того же приложения (как решено на семинаре - командного интерпретатора) в различных пространствах имен.

# Урок 2. Механизмы контрольных групп

### 1. Запустить контейнер с ubuntu, используя механизм LXC;
### 2. Ограничить контейнер 256 Мб ОЗУ и проверить, что ограничение работает;
### 3. Добавить автозапуск контейнеру, перезагрузить ОС и убедиться, что контейнер действительно запустился самостоятельно;
### 4. При создании указать файл, куда записывать логи;
### 5. После перезагрузки проанализировать логи;
### 6*. Настроить автоматическую маршрутизацию между контейнерами. Адреса можно взять: 10.0.12.0/24 и 10.0.13.0/24.

# Урок 3. Введение в Docker

### 1. Запустить контейнер с БД, отличной от mariaDB, используя инструкции на сайте: https://hub.docker.com/
### 2. Добавить в контейнер hostname такой же, как hostname системы через переменную
### 3. Заполнить БД данными через консоль
### 4. запустить phpmyadmin (в контейнере) и через веб проверить, что все введенные данные доступны