---
order: 2
title: Включение ТЖ
---

## **1\. Настройка технологического журнала**

### **1\.1. Через конфигурационный файл (**`1Cestart.cfg`**)**

Основной метод для серверов 1С на Linux.

1. **Откройте конфигурационный файл сервера 1С**:

   bash

   ```
   sudo nano /etc/1C/1Cestart/1Cestart.cfg
   ```

   *(или* `/opt/1C/v8.3/x86_64/conf/conf.cfg` *в зависимости от версии)*

2. **Добавьте или измените секцию** `[TECHLOG]`:

   ini

   ```
   [TECHLOG]
   Enabled=Y
   # Путь к журналу (должен существовать и быть доступен для записи)
   Location=/var/log/1C/techlog
   # Уровень детализации (NONE, ERROR, WARNING, INFO, DEBUG)
   Level=INFO
   # Размер файла (в МБ)
   Size=10
   # Время ротации (в минутах, 0 = по размеру)
   Time=0
   ```

   -  `Location` – директория, куда пишутся логи (должна существовать).

   -  `Level` – уровень логирования (`ERROR`, `WARNING`, `INFO`, `DEBUG`).

   -  `Size` – максимальный размер файла (МБ).

   -  `Time` – интервал ротации (в минутах, `0` = ротация только по размеру).

3. **Создайте директорию и назначьте права**:

   bash

   ```
   sudo mkdir -p /var/log/1C/techlog
   sudo chown -R usr1cv8:grp1cv8 /var/log/1C/techlog
   sudo chmod -R 755 /var/log/1C/techlog
   ```

4. **Перезапустите сервер 1С**:

   bash

   ```
   sudo systemctl restart srv1cv83
   ```

   *(или* `sudo service srv1cv83 restart` *для SysVinit)*

---

### **1\.2. Через переменные окружения (если используется** `ragent` **напрямую)**

Если сервер запускается вручную (например, в Docker), можно передать параметры через переменные:

bash

```
export TECHLOG_ENABLED=Y
export TECHLOG_LOCATION=/var/log/1C/techlog
export TECHLOG_LEVEL=INFO
export TECHLOG_SIZE=10
export TECHLOG_TIME=0
```

Затем запустите `ragent` с этими параметрами.

---

## **2\. Проверка работы технологического журнала**

-  **Проверьте, что файлы создаются**:

   bash

   ```
   ls -la /var/log/1C/techlog/
   ```

-  **Просмотр логов в реальном времени**:

   bash

   ```
   tail -f /var/log/1C/techlog/*.log
   ```

-  **Пример содержимого**:

   text

   ```
   2024-01-01T12:00:00.000 INFO  [1C:Enterprise] Session started (user: Admin)
   2024-01-01T12:00:01.500 WARNING [1C:Enterprise] Long query execution (5.2s)
   ```

---

## **3\. Дополнительные настройки**

### **3\.1. Фильтрация событий**

Можно настроить фильтры в конфиге:

ini

```
[TECHLOG]
...
# Включить только ошибки и предупреждения
Level=WARNING
# Исключить некоторые события (через маски)
Exclude=*COM*,*SQL*
```

### **3\.2. Ротация логов (logrotate)**

Чтобы избежать переполнения диска, настройте `logrotate`:

1. Создайте конфиг:

   bash

   ```
   sudo nano /etc/logrotate.d/1c-techlog
   ```

2. Добавьте правило:

   ini

   ```
   /var/log/1C/techlog/*.log {
       daily
       missingok
       rotate 7
       compress
       delaycompress
       notifempty
       create 644 usr1cv8 grp1cv8
   }
   ```

3. Проверьте работу:

   bash

   ```
   sudo logrotate -f /etc/logrotate.d/1c-techlog
   ```

---

## **4\. Возможные проблемы**

| **Проблема**                 | **Решение**                                         |
|------------------------------|-----------------------------------------------------|
| Нет прав на запись           | `sudo chown -R usr1cv8:grp1cv8 /var/log/1C/techlog` |
| Логи не создаются            | Проверьте `Enabled=Y` и перезапустите сервер        |
| Мало места на диске          | Настройте `logrotate` или уменьшите `Size`          |
| Неверный уровень логирования | Укажите `Level=DEBUG` для максимальной детализации  |

---

## **5\. Анализ логов**

-  **Инструменты**:

   -  `grep`, `awk` – фильтрация по ошибкам.

   -  **ELK-стек (Elasticsearch + Logstash + Kibana)** – для сложного анализа.

   -  **1C:Аналитика** – для визуализации.

Пример поиска ошибок:

bash

```
grep -i "error\|warning" /var/log/1C/techlog/*.log
```

---

### **Вывод**

Технологический журнал в Linux настраивается через `1Cestart.cfg` или переменные окружения. Основные параметры:

-  `Enabled=Y` – включить.

-  `Location=/var/log/1C/techlog` – путь.

-  `Level=INFO` – уровень детализации.

-  `Size=10` – размер файла (МБ).

После настройки **перезапустите сервер 1С** и проверьте логи.