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
