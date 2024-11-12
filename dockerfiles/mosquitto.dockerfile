FROM eclipse-mosquitto:latest

ENV MOSQUITTOUSER=detpos
ENV MOSQUITTOGROUP=detpos

ADD ./mosquitto/mosquitto.conf /etc/mosquitto/mosquitto.conf
ADD ./mosquitto/passwd /etc/mosquitto/passwd

RUN adduser -g ${MOSQUITTOGROUP} -s /bin/sh -D ${MOSQUITTOUSER}

RUN mosquitto_passwd -c -b /etc/mosquitto/passwd detpos asdffdsa

CMD ["mosquitto", "-c", "/etc/mosquitto/mosquitto.conf"]