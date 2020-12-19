FROM ubuntu:bionic 
WORKDIR /home/dasha/proj
RUN apt update -y && \
	apt install qrencode rar unrar apache2 wget software-properties-common -y && \
	add-apt-repository ppa:deadsnakes/ppa -y &&\
	apt install python3.7 -y 
COPY ./ .
EXPOSE 80
CMD apache2ctl -D FOREGROUND
RUN chmod -x myscri.sh
RUN sh myscri.sh

