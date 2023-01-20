# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

EXPOSE 8000
COPY . .


CMD [ "python", "weather_classification_tp.py"]
#docker image build -t pre-weather .
