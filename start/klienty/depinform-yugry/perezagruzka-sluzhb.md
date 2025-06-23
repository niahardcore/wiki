---
order: 5
title: Перезагрузка служб
---

1. Перейдите через Ассистент на терминальный сервер (id 132 660 230 - Пароль: **M1yHN7**).

2. Запустите на рабочем столе программу mRemoteNG и в списке серверов выберите **fresh-lic.**

3. Вы будете под пользователем r86_master, необходимо перейти под суперпользователя. Для этого наберите команду **sudo su** и нажмите **Enter**.

4. На самом сервере имеется 4 основных службы для разных нод, у которых есть своё название (**srv1cv83\\@node_a.service**, **srv1cv83\\@node_b.service**, **srv1cv83\\@node_c.service**, **srv1cv83\\@node_s.service**).

5. Непосредственный перезапуск служб осуществляется командами (скопировали **одну** команду, вставили, нажмите Enter и подождите пока служба перезагрузится):\
   systemctl restart srv1cv83@node_a.service

systemctl restart srv1cv83@node_b.service

systemctl restart srv1cv83@node_c.service

systemctl restart srv1cv83@node_s.service

1. Проверить статус служб можно при помощи команд (скопировали, вставили **одну** команду и смотрите статус: active - означает, что всё хорошо):\
   systemctl status srv1cv83@node_a.service

systemctl status srv1cv83@node_b.service

systemctl status srv1cv83@node_c.service

systemctl status srv1cv83@node_s.service