FROM ubuntu:22.04

RUN apt update && apt upgrade -y
RUN apt install -y nano mc curl wget ufw iproute2
RUN apt install -y locales
RUN localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8
ARG DEBIAN_FRONTEND=noninteractive
RUN apt install -y  python3.11
RUN apt install -y postgresql-contrib


ENTRYPOINT ["/bin/tail", "-f", "/dev/null"]

EXPOSE 80
