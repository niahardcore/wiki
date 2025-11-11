---
order: 6
title: Общая статистика кэширования
---

Запрос для того чтобы проверить процент попадания в кэш

:::note 

SELECT 'shared_buffers cache hit ratio' AS metric, ROUND(SUM(blks_hit) \* 100.0 / NULLIF(SUM(blks_hit + blks_read), 0), 2) AS ratio_pct FROM pg_stat_database WHERE datname = current_database()

UNION ALL

SELECT 'heap only: indexless table scan cache hit', ROUND( (SUM(heap_blks_hit) \* 100.0) / NULLIF(SUM(heap_blks_hit + heap_blks_read), 1), 2 ) FROM pg_statio_user_tables

UNION ALL

SELECT 'index blocks cache hit', ROUND( (SUM(idx_blks_hit) \* 100.0) / NULLIF(SUM(idx_blks_hit + idx_blks_read), 1), 2 ) FROM pg_statio_user_tables

UNION ALL

SELECT 'toast blocks cache hit', ROUND( (SUM(toast_blks_hit) \* 100.0) / NULLIF(SUM(toast_blks_hit + toast_blks_read), 1), 2 ) FROM pg_statio_user_tables;

:::

**Интерпретация:**

-  **\> 99%** -- отлично (ваш случай, скорее всего).

-  **95–99%** -- нормально для OLTP + тяжёлых отчётов.

-  **\< 95%** -- таблицы не помещаются в `shared_buffers` + ОС-кэш -> рост `iowait`, медленные запросы.


