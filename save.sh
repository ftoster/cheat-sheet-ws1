#!/bin/bash

# Задаем имя пользователя и адрес удаленного сервера
remote_user="remote_user"
remote_host="remote_host"

# Создаем папку для архивов
mkdir -p archive

# Архивируем все папки с лог-файлами
for dir in */ ; do
  if [ -d "$dir" ]; then
    tar -zcvf "archive/${dir%/}.tar.gz" "$dir"
  fi
done

# Копируем папку с архивами на удаленный сервер
rsync -avz --delete archive/ "${remote_user}@${remote_host}:home/"

# Удаляем папку archive из исходной папки
rm -rf archive
