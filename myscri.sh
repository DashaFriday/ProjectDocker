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
cp /dev/null 123.txt
echo 'Почему-то картинки ломаются при передаче по сети, глянь что можно сделать' >> 123.txt
chmod ugo+rwx myfun2.py 
./myfun2.py >> 123.txt
rm -f qrcode6.png

#Файл прячется в rar-архив, архив сливается с картинкой
rar a arch.rar 123.txt
cat lin.jpeg arch.rar > pict123.jpg
mv pict123.jpg work/pict123.jpg

#Удаление лишних файлов
rm -f 123.txt
rm -f arch.rar
