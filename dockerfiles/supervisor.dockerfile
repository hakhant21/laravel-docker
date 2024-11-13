FROM php:8.3-fpm-alpine

ENV SUPERVISORGROUP=detpos
ENV SUPERVISORUSER=detpos

RUN adduser -g ${SUPERVISORGROUP} -s /bin/sh -D ${SUPERVISORUSER}

RUN apk add --no-cache supervisor

RUN mkdir -p /etc/supervisor/conf.d/

COPY ./supervisor/supervisord.conf /etc/supervisor/supervisord.conf
COPY ./supervisor/conf.d/ /etc/supervisor/conf.d/
COPY ./shell/start.sh /usr/local/bin/start.sh
COPY ./shell/copy.sh /usr/local/bin/copy.sh

RUN chmod +x /usr/local/bin/start.sh
RUN chmod +x /usr/local/bin/copy.sh

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]