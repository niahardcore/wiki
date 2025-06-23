---
order: 2
title: Автономный сервер ibcmd
---

Данный метод исполняется не интерактивно, а в пакетном режиме. Для того чтобы выгрузить базу потребуется заранее установить платформенные дополнительные средства администрирования. В папке с платформой должен появится файл ibcmd.exe. Далее в командной строке нужно выполнить команду:

"C:\\Program Files\\1cv8\\\<Версия платформы>\\bin\\ibcmd.exe" infobase dump --db-server="\<адрес сервера СУБД>" --dbms=postgresql --db-user=postgres --db-pwd=\<пароль от СУБД> --db-name="\<название базы в СУБД>" --user="\<пользователь в базе 1С>" --password="\<пароль пользователя базы 1С>" "\<Путь к выгрузке>\\\<название выгрузки>.dt"

Примеры:

**Рабочая версия для MS**

*C:\\Program Files\\1cv8\\8.3.23.2040\\bin\\ibcmd.exe" infobase dump --db-server="*[*localhost*](http://localhost)*\\SQLExpress" --dbms=MSSQLServer --db-user=sa --db-pwd=qwerty@2 --db-name="monitor" --user="Хорошие люди"  --password="iddqdidkfa" "D:\\Backup1C\\monitor.dt"*

**Рабочая версия для PostgreSQL**

*"C:\\Program Files\\1cv8\\8.3.23.2040\\bin\\ibcmd.exe" infobase dump --db-server="192.168.100.9" --dbms=postgresql --db-user=postgres --db-pwd=qwerty@2 --db-name="BUH" --user="Хорошие люди" --password="iddqdidkfa" "D:\\Backup1C\\BUH.dt"*



*Файл:* [Backup1CtoDT.bat](./Backup1CtoDT.bat)