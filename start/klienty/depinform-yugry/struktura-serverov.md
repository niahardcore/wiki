---
order: 3
title: Структура серверов
---

## **Серверы Web (Linux):**

```
	192.168.210.186 - 1c-kadry-Web  (id 198 182 307)	- установлена платформа 1С 8.3.23.1865 с web расширением + Apache/2.4.58 + Kaspersky 	
	192.168.210.187 - 1c-kadry-Web2 (id 220 263 103)	- установлена платформа 1С 8.3.23.1865 с web расширением + Apache/2.4.58 + Kaspersky
	192.168.210.188 - 1c-kadry-Web3 (id 130 643 098)	- установлена платформа 1С 8.3.23.1865 с web расширением + Apache/2.4.58 + Kaspersky

СЛУЖБА iptables должна быть отключена. Следить чтобы после перезагрузки systemctl status iptables.service показал что служба отключена. 
```

**Подключение**

Основной метод подключения к серверам по приложению putty (Ассистент не рекомендую использовать). Заходим на сервер под управлением windows из статьи, запускаем putty и вводим IP адрес сервера, порт указываем 22.

**Проверка работоспособности web серверов**

Статус сервер: [  http://192.168.210.186/server-status](http://192.168.210.186/server-status)

Статус сервер: [  http://192.168.210.187/server-status](http://192.168.210.187/server-status)

Статус сервер: [  http://192.168.210.188/server-status](http://192.168.210.188/server-status)

## [**Серверы приложений (Windows):**](https://wiki.yandex.ru/homepage/texnicheskie-voprosy/gis-uk/gis-uk-struktura-serverov/#servery-prilozhenij-windows)

**Серверы приложений (Windows):**

```
	192.168.210.181 - 1c-kadry-AppFZ	- установлена платформа 1С 8.3.23.1865 (Центральный сервер для базы Учет Кадров) + Kaspersky		
	192.168.210.182 - 1c-kadry-App2	 	- установлена платформа 1С 8.3.23.1865 без локального кластера (Рабочий сервер) + Kaspersky
	192.168.210.185 - 1c-kadry-App3		- установлена платформа 1С 8.3.23.1865 (Центральный сервер для баз Антикоррупция и Оценки Персонала) + Kaspersky	
	192.168.210.195 - 1c-kadry_App		- установлена платформа 1С 8.3.23.1865 без локального кластера (Рабочий сервер) + Kaspersky
```

## [**Серверы СУБД (Linux):**](https://wiki.yandex.ru/homepage/texnicheskie-voprosy/gis-uk/gis-uk-struktura-serverov/#servery-subd-linux)

**Серверы СУБД (Linux):**

```
	192.168.210.183 - 1c-kadry-db2 (id 040 209 924)	- Установлен PostgreSQL, конфиг и файлы находится в папке /mnt/disk1/1c-14/data + Kaspersky	- для ГИС
	192.168.210.197 - 1c_kadry_db			- Установлен PostgreSQL, конфиг и файлы находится в папке /mnt/disk1/1c-16/data + Kaspersky	- для Антикор и Оценки
```

**Подключение**

Основной метод подключения к серверам по приложению putty (Ассистент не рекомендую использовать). Заходим на сервер под управлением windows из статьи, запускаем putty и вводим IP адрес сервера, порт указываем 22.

## [**Прочие серверы:**](https://wiki.yandex.ru/homepage/texnicheskie-voprosy/gis-uk/gis-uk-struktura-serverov/#prochie-servery)

**Прочие серверы:**

```
	192.168.210.190 - 1c-kadry-backup (id 094 514 444)	- Linux. Сервер для резервных копий баз
 	192.168.210.184 - 1c-kadry-Files (id 196 771 179)	- Linux. Установлена Samba. + Kaspersky
	192.168.210.196 - 1c_kadry_Liс				- Windows. Установлена платформа 1С 8.3.23.1865 без локального кластера + Kaspersky
```

**Полезные ссылки:**

[  Конфиг для Apache prefork](https://masterpro.ws/forum/23-servera-i-seti/4752-konfig-dlya-apache-prefork) - указано как правильно парсить конфиг и пути к конфигам и модулям.

[  Postgres Pro Standard : До... ](https://postgrespro.ru/docs/postgrespro/9.5/libpq-pgpass)\- как упаковать файл pgpass.conf для того чтобы резервная копия работа СУБД

[  https://redos.red-soft.ru/base/server-configuring/network-storage/samba-share-primer/](https://redos.red-soft.ru/base/server-configuring/network-storage/samba-share-primer/) - настройка общей папки на Linux

[  https://redos.red-soft.ru/base/server-configuring/monitoring/haproxy/](https://redos.red-soft.ru/base/server-configuring/monitoring/haproxy/) - настройка haproxy