FROM composer:latest

ENV COMPOSERUSER=detpos
ENV COMPOSERGROUP=detpos

RUN adduser -g ${COMPOSERGROUP} -s /bin/sh -D ${COMPOSERUSER}