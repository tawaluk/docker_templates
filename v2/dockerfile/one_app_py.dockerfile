FROM ubuntu:24.04

WORKDIR /name_app/
COPY local /name_app/

RUN apt update && apt upgrade -y && apt install -y python3.12 python3-pip python3.12-dev python3.12-venv \
    curl nano mc ufw locales

# Пример. Установка зависимостей python3.12
#RUN python3.12 -m venv venv && ./venv/bin/pip install -r req.txt
