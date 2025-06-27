---
order: 4
title: Клиентское резервное копирование
---

Создать папку куда будут создаваться копии баз. Например D:\\Backup1c\\

В папке создать файл postgrebackup.bat. В файл добавить текст:



ECHO off\
SETLOCAL ENABLEDELAYEDEXPANSION\
set pathbackup=\<Путь к папке>\
set datepath=%date:6,4%%date:3,2%%date:0,2%\_%time:0,2%%time:\~3,2%\
ECHO %time% START >> %pathbackup%log.txt\
CD /d "\<Путь к папке psql вплоть до BIN>"\
For /F %%i In (%pathbackup%bases.txt) Do (\
ECHO !time! start dump base %%i >> %pathbackup%log.txt\
if not exist "%pathbackup%%%i%" (\
mkdir %pathbackup%%%i%\
)\
start /wait pg_dump -v -Ft -d %%i -w -U postgres -f "%pathbackup%%%i%datepath%\_%%i.dump" >> %pathbackup%log.txt\
ECHO !time! end dump base %%i >> %pathbackup%log.txt\
)\
ECHO %time% END >> %pathbackup%log.txt



Рядом с созданным файлов создать файл bases.txt и вписать базы через перенос строки.

Так же создать пустой файл log.txt.

Следующий шаг создать файл в каталоге %APPDATA%\\postgresql\\pgpass.conf и внутри описать параметры имя\_пользователя и пароль в формате



сервер:порт:база\_данных:имя\_пользователя:пароль

В файле должно быть так:

*\*:\**:\*:postgres:qwerty@2



Для проверки запустить bat файл от имени администратора. При успешyом выполнении в папке \<ПутьКПапке\\ИмяБазы> появится файл с расширением \*.dump. (память не должна быть равна 0)



Полезные файлы:

[postgrebackup.bat](./postgrebackup.bat)

[bases.txt](./bases.txt)

[pgpass.conf](./pgpass.conf)

[backupDel файлы.bat](<./backupDel файлы.bat>)