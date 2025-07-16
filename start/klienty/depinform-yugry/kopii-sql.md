---
order: 6
title: Копии SQL
---

**Копия базы:**

pg_dump -d postgres://postgres:qwerty%402@127.0.0.1:5432/\<имя базы> > /mnt/backup1c/\<путь к папке>/\<имя файла>.sql



**Восстановление базы данных:** 

psql -d postgres://postgres:qwerty%402@127.0.0.1:5432/\<имя базы> \< /mnt/backup1c/\<путь к папке>/\<имя файла>.sql