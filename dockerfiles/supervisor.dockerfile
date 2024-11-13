FROM php:8.3-fpm-alpine

ENV SUPERVISORGROUP=detpos
ENV SUPERVISORUSER=detpos

RUN adduser -g ${SUPERVISORGROUP} -s /bin/sh -D ${SUPERVISORUSER}

RUN apk add --no-cache supervisor

RUN mkdir -p /etc/supervisor/conf.d/

COPY ./supervisor/supervisord.conf /etc/supervisor/supervisord.conf
COPY ./supervisor/conf.d/ /etc/supervisor/conf.d/
COPY ./shell/install.sh /usr/local/bin/install.sh

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]