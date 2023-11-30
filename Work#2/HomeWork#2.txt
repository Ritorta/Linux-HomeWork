# Урок 2. Работа с файлами и ссылками
Результат

Текст команд, которые применялись при выполнении задания.
Присылаем в формате текстового документа: задание и команды для решения (без вывода).
Формат — PDF (один файл на все задания).

## Задание

### 1. Используя команду cat, создать два файла с данными, а затем объединить их.
Просмотреть содержимое созданного файла.
Переименовать файл, дав ему новое имя.

Выполнение:

fox@love-linux:~/HW2$ cat > Doc1
Message test one

fox@love-linux:~/HW2$ cat > Doc2
message test two

fox@love-linux:~/HW2$ cat Doc1 Doc2 > Doc3
fox@love-linux:~/HW2$ ll
total 20
drwxrwxr-x  2 fox fox 4096 Nov 24 11:16 ./
drwxr-x--- 16 fox fox 4096 Nov 24 10:58 ../
-rw-rw-r--  1 fox fox   17 Nov 24 11:15 Doc1
-rw-rw-r--  1 fox fox   17 Nov 24 11:15 Doc2
-rw-rw-r--  1 fox fox   34 Nov 24 11:16 Doc3

fox@love-linux:~/HW2$ cat Doc3
Message test one
message test two

fox@love-linux:~/HW2$ mv Doc3 Doc
fox@love-linux:~/HW2$ ll
total 20
drwxrwxr-x  2 fox fox 4096 Nov 24 11:17 ./
drwxr-x--- 16 fox fox 4096 Nov 24 10:58 ../
-rw-rw-r--  1 fox fox   34 Nov 24 11:16 Doc
-rw-rw-r--  1 fox fox   17 Nov 24 11:15 Doc1
-rw-rw-r--  1 fox fox   17 Nov 24 11:15 Doc2

fox@love-linux:~/HW2$ cat Doc
Message test one
message test two

fox@love-linux:~/HW2$ 

### 2. Создать несколько файлов.
Создать директорию, переместить файл туда.
Удалить все созданные в этом и предыдущем задании директории и файлы.

Выполнение:

fox@love-linux:~$ touch Text1 Text2 Text3
fox@love-linux:~$ mkdir HW2

fox@love-linux:~$ ls -l
total 88
drwxr-xr-x 2 fox  fox     4096 Nov 16 14:41 Desktop
drwxr-xr-x 2 fox  fox     4096 Nov 16 14:41 Documents
drwxr-xr-x 2 fox  fox     4096 Nov 16 16:01 Downloads
drwxrwxr-x 2 fox  fox     4096 Nov 24 11:17 HW2
drwxr-xr-x 2 fox  fox     4096 Nov 16 14:41 Music
drwxr-xr-x 3 fox  fox     4096 Nov 17 00:13 Pictures
drwxr-xr-x 2 fox  fox     4096 Nov 16 14:41 Public
drwxrwx--- 1 root vboxsf 49152 Nov 24 10:45 shared
drwx------ 5 fox  fox     4096 Nov 23 22:51 snap
drwxr-xr-x 2 fox  fox     4096 Nov 16 14:41 Templates
-rw-rw-r-- 1 fox  fox        0 Nov 24 13:29 Text1
-rw-rw-r-- 1 fox  fox        0 Nov 24 13:29 Text2
-rw-rw-r-- 1 fox  fox        0 Nov 24 13:29 Text3
drwxr-xr-x 2 fox  fox     4096 Nov 16 14:41 Videos

fox@love-linux:~$ mv Text1 Text2 Text3 /home/fox/HW2
fox@love-linux:~$ ls -l
total 88
drwxr-xr-x 2 fox  fox     4096 Nov 16 14:41 Desktop
drwxr-xr-x 2 fox  fox     4096 Nov 16 14:41 Documents
drwxr-xr-x 2 fox  fox     4096 Nov 16 16:01 Downloads
drwxrwxr-x 2 fox  fox     4096 Nov 24 13:36 HW2
drwxr-xr-x 2 fox  fox     4096 Nov 16 14:41 Music
drwxr-xr-x 3 fox  fox     4096 Nov 17 00:13 Pictures
drwxr-xr-x 2 fox  fox     4096 Nov 16 14:41 Public
drwxrwx--- 1 root vboxsf 49152 Nov 24 10:45 shared
drwx------ 5 fox  fox     4096 Nov 23 22:51 snap
drwxr-xr-x 2 fox  fox     4096 Nov 16 14:41 Templates
drwxr-xr-x 2 fox  fox     4096 Nov 16 14:41 Videos

fox@love-linux:~$ cd HW2
fox@love-linux:~/HW2$ ls -l
total 12
-rw-rw-r-- 1 fox fox 34 Nov 24 11:16 Doc
-rw-rw-r-- 1 fox fox 17 Nov 24 11:15 Doc1
-rw-rw-r-- 1 fox fox 17 Nov 24 11:15 Doc2
-rw-rw-r-- 1 fox fox  0 Nov 24 13:29 Text1
-rw-rw-r-- 1 fox fox  0 Nov 24 13:29 Text2
-rw-rw-r-- 1 fox fox  0 Nov 24 13:29 Text3
fox@love-linux:~/HW2$ cd ..

fox@love-linux:~$ rm -r HW2
fox@love-linux:~$ ls -l
total 84
drwxr-xr-x 2 fox  fox     4096 Nov 16 14:41 Desktop
drwxr-xr-x 2 fox  fox     4096 Nov 16 14:41 Documents
drwxr-xr-x 2 fox  fox     4096 Nov 16 16:01 Downloads
drwxr-xr-x 2 fox  fox     4096 Nov 16 14:41 Music
drwxr-xr-x 3 fox  fox     4096 Nov 17 00:13 Pictures
drwxr-xr-x 2 fox  fox     4096 Nov 16 14:41 Public
drwxrwx--- 1 root vboxsf 49152 Nov 24 10:45 shared
drwx------ 5 fox  fox     4096 Nov 23 22:51 snap
drwxr-xr-x 2 fox  fox     4096 Nov 16 14:41 Templates
drwxr-xr-x 2 fox  fox     4096 Nov 16 14:41 Videos
fox@love-linux:~$

### 3. Создать файл file1 и наполнить его произвольным содержимым.
Скопировать его в file2.
Создать символическую ссылку file3 на file1.
Создать жёсткую ссылку file4 на file1.
Посмотреть, какие айноды у файлов.
Удалить file1.
Что стало с остальными созданными файлами?
Попробовать вывести их на экран.

Выполнение:

fox@love-linux:~/HW2$ cat > file1
Random message
fox@love-linux:~/HW2$ cat file1 >> file2
fox@love-linux:~/HW2$ ls -l
total 8
-rw-rw-r-- 1 fox fox 15 Nov 24 13:47 file1
-rw-rw-r-- 1 fox fox 15 Nov 24 13:47 file2

fox@love-linux:~/HW2$ cat file1
Random message
fox@love-linux:~/HW2$ cat file2
Random message

fox@love-linux:~/HW2$ ln -s file1 file3
fox@love-linux:~/HW2$ ls -l
total 8
-rw-rw-r-- 1 fox fox 15 Nov 24 13:47 file1
-rw-rw-r-- 1 fox fox 15 Nov 24 13:47 file2
lrwxrwxrwx 1 fox fox  5 Nov 24 13:50 file3 -> file1

fox@love-linux:~/HW2$ ln file1 file4
fox@love-linux:~/HW2$ ls -i
270158 file1  270159 file2  270574 file3  270158 file4

fox@love-linux:~/HW2$ rm file1
fox@love-linux:~/HW2$ ls -l
total 8
-rw-rw-r-- 1 fox fox 15 Nov 24 13:47 file2
lrwxrwxrwx 1 fox fox  5 Nov 24 13:50 file3 -> file1
-rw-rw-r-- 1 fox fox 15 Nov 24 13:47 file4
fox@love-linux:~/HW2$ ls -i
270159 file2  270574 file3  270158 file4

fox@love-linux:~/HW2$ cat file4
Random message
fox@love-linux:~/HW2$ cat file3
cat: file3: No such file or directory
fox@love-linux:~/HW2$

### 4. Дать созданным файлам другие, произвольные имена.
Создать новую символическую ссылку.
Переместить ссылки в другую директорию.

Выполнение:

fox@love-linux:~/HW2$ mkdir diR
fox@love-linux:~/HW2$ ls -l
total 12
drwxrwxr-x 2 fox fox 4096 Nov 24 13:58 diR
-rw-rw-r-- 1 fox fox   15 Nov 24 13:47 file2
lrwxrwxrwx 1 fox fox    5 Nov 24 13:50 file3 -> file1
-rw-rw-r-- 1 fox fox   15 Nov 24 13:47 file4

fox@love-linux:~/HW2$ mv file2 randomName1
fox@love-linux:~/HW2$ mv file4 randomName2
fox@love-linux:~/HW2$ ls -il
total 12
270766 drwxrwxr-x 2 fox fox 4096 Nov 24 14:08 diR
270574 lrwxrwxrwx 1 fox fox    5 Nov 24 13:50 file3 -> file1
270159 -rw-rw-r-- 1 fox fox   15 Nov 24 13:47 randomName1
270158 -rw-rw-r-- 1 fox fox   15 Nov 24 13:47 randomName2

fox@love-linux:~/HW2$ ln -s randomName1 Sym1
fox@love-linux:~/HW2$ ln -s /home/fox/HW2/randomName2 Sym2
fox@love-linux:~/HW2$ ls -l
total 12
drwxrwxr-x 2 fox fox 4096 Nov 24 14:14 diR
lrwxrwxrwx 1 fox fox    5 Nov 24 13:50 file3 -> file1
-rw-rw-r-- 1 fox fox   15 Nov 24 13:47 randomName1
-rw-rw-r-- 1 fox fox   15 Nov 24 13:47 randomName2
lrwxrwxrwx 1 fox fox   11 Nov 24 14:00 Sym1 -> randomName1
lrwxrwxrwx 1 fox fox   25 Nov 24 14:33 Sym2 -> /home/fox/HW2/randomName2

fox@love-linux:~/HW2$ cd diR
fox@love-linux:~/HW2/diR$ ls -il
total 0
270767 lrwxrwxrwx 1 fox fox 11 Nov 24 14:00 Sym1 -> randomName1
272900 lrwxrwxrwx 1 fox fox 25 Nov 24 14:33 Sym2 -> /home/fox/HW2/randomName2
fox@love-linux:~/HW2/diR$
