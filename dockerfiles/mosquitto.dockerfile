FROM eclipse-mosquitto:latest

ENV MOSQUITTOUSER=detpos
ENV MOSQUITTOGROUP=detpos

RUN adduser -g ${MOSQUITTOGROUP} -s /bin/sh -D ${MOSQUITTOUSER}

CMD ["mosquitto", "-c", "/etc/mosquitto/mosquitto.conf"]