# TODO список задач

live-demo: https://todo-nuringa.herokuapp.com/

Приложение выполнено на Ruby on Rails 5.2.4

Склонируйте репозиторий:

```
git@github.com:nuringa/todo_list.git
```

Запустите из директории проекта

```
bundle
```

Необходимо создать и настроить PostgreSQL для проекта. Шаблон файла находится в 
```
config/database.yml.sample
```
Переименовываем в 'database.yml' и записываем в него логин пользователя PostgreSQL и пароль

Далее создаем бд проекта, вызвав из консоли:
```
bin/rails db:setup
```
Запускаем сервер:
```
bin/rails s
```

Приложение смотрим по адресу:
```
http://localhost:3000
```
