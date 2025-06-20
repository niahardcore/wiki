---
order: 1
title: Взломать пароль
---

Если у Вас есть база в формате **DT** и вы не знаете логин и пароль для входа, тогда загружаете базу в клиент-серверный вариант. Далее переходим в **PgAdmin4** и выполняем скрипты для базы нужной базы

1. ALTER TABLE v8users RENAME TO v8users2;

2. UPDATE Params SET FileName='users.usr_old' WHERE FileName='users.usr';

3. Заходим в Конфигуратор -> Пользователи

4. DROP TABLE v8users;

5. ALTER TABLE v8users2 RENAME TO v8users;

6. UPDATE Params SET FileName='users.usr' WHERE FileName='users.usr_old';

7. Пользователи появятся в списке и нужно у пользователя с полными правами заменить ПАРОЛЬ.


