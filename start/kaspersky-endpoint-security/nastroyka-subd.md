---
order: 5
title: Настройка СУБД
---

<https://support.kaspersky.com/KSC/13.2/ru-RU/92403_1.htm>

Если в качестве СУБД вы используете SQL Server 2019, после установки Kaspersky Security Center необходимо выполнить следующие действия:

1. Подключитесь к SQL-серверу с помощью SQL Management Studio.

2. Выполните следующую команду (если вы [выбрали другое имя для базы данных](https://support.kaspersky.com/KSC/13.2/ru-RU/13086.htm), используйте это имя вместо KAV):

   USE KAV

   GO

   ALTER DATABASE SCOPED CONFIGURATION SET TSQL_SCALAR_UDF_INLINING = OFF

   GO

3. Перезапустите службу SQL Server 2019.