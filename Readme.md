# dbops-project
Исходный репозиторий для выполнения проекта дисциплины "DBOps"

## Запросы

1. Создайте ещё одну БД в PostgreSQL, допустим, это будет база store:
```
CREATE DATABASE store;
```

2. Создайте нового пользователя PostgreSQL и выдайте ему права на все таблицы в базе store
```
CREATE USER store_user WITH PASSWORD 'password';
GRANT ALL PRIVILEGES ON DATABASE store TO store_user;
GRANT ALL PRIVILEGES ON SCHEMA public TO store_user;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO store_user;
```

3. SQL-запрос, который показывает, какое количество сосисок было продано за предыдущую неделю:
```
store=> SELECT o.date_created, SUM(op.quantity)
FROM orders AS o
JOIN order_product AS op ON o.id = op.order_id
WHERE o.status = 'shipped' AND o.date_created > NOW() - INTERVAL '7 DAY'
GROUP BY o.date_created;
 date_created |  sum
--------------+-------
 2025-04-06   | 96023
 2025-04-07   | 93715
 2025-04-08   | 94324
 2025-04-09   | 95317
 2025-04-10   | 95295
 2025-04-11   | 95752
 2025-04-12   | 78903
(7 rows)
```
