---
order: 1
title: Включение отладки
---

Откройте файл конфигурации сервера (`/etc/1C/1Cestart/1Cestart.cfg` или `/opt/1C/v8.3/x86_64/conf/conf.cfg`) и добавьте параметры отладки:

```
[Debugger]
Enabled=Y
Port=1555
WaitOnStart=N
```

```
sudo systemctl restart srv1cv83  # для systemd
# или
sudo service srv1cv83 restart   # для SysVinit
```

```
netstat -tulnp | grep 1555
```