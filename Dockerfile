FROM ubuntu:bionic

RUN apt update && apt install -y \
	python-pip
COPY ./work /app
WORKDIR /app
RUN pip install -r requiments.txt
CMD ["python", "app.py"]


