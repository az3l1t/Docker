# Dockercompose

Написать Dockerfile, собрать образ, запустить контейнер (и записать команду для его запуска).
Для монтирования создайте директорию data и в ней файл student.txt, содержащий ФИО, название
группы и номер варианта.

Для установки пакетов использовать команду apt install -y название-пакета. В качестве примера
можно использовать Dockerfile из раздела 7.

Чётные варианты:
 • необходимо использовать базовый образ ubuntu:20.10
 • примонтировать файл data/student.txt как /mnt/files/student.txt в контейнере.
Нечётные варианты:
 • необходимо использовать базовый образ ubuntu:20.04
 • примонтировать директорию data в директорию /mnt/files/ в контейнере.

Запустить веб-сервер, отображающий содержимое /mnt/files, в хостовой системе должен открываться
на порту (8800 + номер варианта). Например, для 22-го варианта это порт 8822.
Установить пакет, согласно варианту:
1. cowsay
2. figlet
3. zip
4. imagemagick
5. git
6. patch
7. php-cli
8. postgresql-client
9. mysql-client
10. jq
11. gpg
12. wget
13. nginx
14. nano
15. emacs-nox

# Во-первых, надо создать свой образ с помощью Dockerfile на основе nginx на порту 8801:

![image](https://github.com/az3l1t/Dockercompose/assets/126178814/300d1e24-35e9-4297-81c7-fc7a6c643cac)
![image](https://github.com/az3l1t/Dockercompose/assets/126178814/f7ca37d7-eb75-4d80-a358-9e3365031bba)
![image](https://github.com/az3l1t/Dockercompose/assets/126178814/70591934-d734-4311-8556-744343150958)
Теперь можно увидеть наш image в списке:
# Дальше мы запускаем контейнер на порту 8801, указываем путь до папки data и монтируем ее к нашим mnt/files, которую мы показываем на сайте.
![image](https://github.com/az3l1t/Dockercompose/assets/126178814/67ad6edd-57b8-42d1-98d3-30d2d0746d47)
![image](https://github.com/az3l1t/Dockercompose/assets/126178814/115c78a8-a349-49e8-8b44-45be8244ad71)
![image](https://github.com/az3l1t/Dockercompose/assets/126178814/6ee19f29-f392-49e3-af8d-f0f88f388a06)
![image](https://github.com/az3l1t/Dockercompose/assets/126178814/04e4095b-b1bf-4ef9-8920-00b51f121374)

 

