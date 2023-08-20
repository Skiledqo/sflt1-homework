# sflt1-homework
# Домашнее задание к занятию "Disaster recovery и Keepalived" - Серебренников Иван
## Задание 1
 На данной схеме уже настроено отслеживание интерфейсов маршрутизаторов Gi0/1 (для нулевой группы)
 Необходимо аналогично настроить отслеживание состояния интерфейсов Gi0/0 (для первой группы).
 Для проверки корректности настройки, разорвите один из кабелей между одним из маршрутизаторов и Switch0 и запустите ping между PC0 и Server0.
 На проверку отправьте получившуюся схему в формате pkt и скриншот, где виден процесс настройки маршрутизатора.

![Настройка.jpg](https://github.com/Skiledqo/sflt1-homework/blob/main/%D0%9D%D0%B0%D1%81%D1%82%D1%80%D0%BE%D0%B9%D0%BA%D0%B0.jpg)


## Задание 2
 Запустите две виртуальные машины Linux, установите и настройте сервис Keepalived как в лекции, используя пример конфигурационного файла.
 Настройте любой веб-сервер (например, nginx или simple python server) на двух виртуальных машинах
 Напишите Bash-скрипт, который будет проверять доступность порта данного веб-сервера и существование файла index.html в root-директории данного веб-сервера.
 Настройте Keepalived так, чтобы он запускал данный скрипт каждые 3 секунды и переносил виртуальный IP на другой сервер, если bash-скрипт завершался с кодом, отличным от нуля (то есть порт веб-сервера был недоступен или отсутствовал index.html). Используйте для этого секцию vrrp_script
 На проверку отправьте получившейся bash-скрипт и конфигурационный файл keepalived, а также скриншот с демонстрацией переезда плавающего ip на другой сервер в случае недоступности порта или файла index.html
![Keepalived.png](https://github.com/Skiledqo/sflt1-homework/blob/main/Keepalived.png)
