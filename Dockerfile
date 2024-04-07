# Используем официальный образ Ubuntu 20.04 как базовый
FROM ubuntu:20.04 

# Устанавливаем nginx
RUN apt-get update && apt-get install -y nginx

# Копируем файлы в контейнер
COPY data /mnt/files/

# Настройка Nginx для отображения файлов из /mnt/files/
RUN echo "server { listen 8801; location / { root /mnt/files; autoindex on; }} " > /etc/nginx/sites-enabled/default 

# Открываем порт 8801
EXPOSE 8801

# Стартуем Nginx в foreground при старте контейнера
CMD ["nginx", "-g", "daemon off;"]