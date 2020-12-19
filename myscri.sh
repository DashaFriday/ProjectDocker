#!/bin/sh 

#сценарий для контейнера по проекту

#Генерация флага в созданный файл
cp /dev/null text.txt
chmod ugo+rwx myfun1.py 
./myfun1.py 

#Создание qr-кода, удаление текстового файла
cat text.txt | qrencode -s 9 -o qrcode6.png
rm -f text.txt

#Перевод картинки в двочиный код и сохранение в файл, удаление qr
cp /dev/null ghjk.txt
chmod ugo+rwx myfun2.py 
./myfun2.py 
rm -f qrcode6.png

#Небольшая корректировка текстового файла
chmod ugo+rwx myfun3.py 
./myfun3.py 

#Файл прячется в rar-архив, архив сливается с картинкой
rar a arch.rar ghjk.txt
cat Tux.jpg arch.rar > pict123.jpg

#Удаление всех лишних файлов
rm -f ghjk.txt
rm -f arch.rar
rm -f myfun1.py
rm -f myfun2.py
rm -f myfun3.py
rm -f Tux.jpg

#Удаление html-файла в apache и перемещение туда получившейся картинки
rm -f /var/www/html/index.html
mv pict123.jpg /var/www/html/pict.jpg
