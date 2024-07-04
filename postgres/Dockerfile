FROM ubuntu:22.04

RUN apt update && apt upgrade -y
RUN apt install -y nano mc curl wget ufw iproute2
RUN apt install -y locales
RUN localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8
ARG DEBIAN_FRONTEND=noninteractive
RUN sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
RUN wget -qO- https://www.postgresql.org/media/keys/ACCC4CF8.asc
RUN apt install -y postgresql postgresql-contrib

EXPOSE 5432
