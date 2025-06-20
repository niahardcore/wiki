---
order: 2
title: Analyze
---

## **online_analyze -- обновление статистики после операций** `INSERT`**,** `UPDATE`**,** `DELETE` **или** `SELECT INTO`

Модуль `online_analyze` предоставляет набор функций, которые немедленно обновляют статистику после операций `INSERT`, `UPDATE`, `DELETE` или `SELECT INTO` в целевых таблицах.

Чтобы использовать модуль `online_analyze`, загрузите разделяемую библиотеку:

```
LOAD 'online_analyze'; - можно сделать через PGAdmin4
```

Вы можете настроить `online_analyze`, используя следующие дополнительные переменные (для них показаны значения по умолчанию):

-  online_analyze.enable = on

   Включает `online_analyze`.

-  online_analyze.verbose = off

   Выполняет `ANALYZE VERBOSE`.

-  online_analyze.scale_factor = 0.1

   Процент от размера таблицы, при котором начинается немедленный анализ (этот параметр подобен [autovacuum_analyze_scale_factor](https://postgrespro.ru/docs/postgrespro/16/runtime-config-autovacuum#GUC-AUTOVACUUM-ANALYZE-SCALE-FACTOR)).

-  online_analyze.threshold = 50

   Минимальное число изменений строк, после которого может начаться немедленный анализ (этот параметр подобен [autovacuum_analyze_threshold](https://postgrespro.ru/docs/postgrespro/16/runtime-config-autovacuum#GUC-AUTOVACUUM-ANALYZE-THRESHOLD)).

-  online_analyze.min_interval = 10000

   Минимальный интервал времени между вызовами `ANALYZE` для отдельной таблицы (в миллисекундах).

-  online_analyze.table_type = "`temporary”`

   Типы таблиц, для которых выполняется немедленный анализ: `all` (все), `persistent` (постоянные), `temporary` (временные), `none` (никакие).

-  online_analyze.local_tracking = on

   Включает в `online_analyze` отслеживание временных таблиц в рамках обслуживающего процесса. Когда эта переменная отключена (`off`), `online_analyze` использует для временных таблиц системную статистику по умолчанию.

-  online_analyze.capacity_threshold = 100000

Максимальное число временных таблиц, сохраняемых в локальном кеше.