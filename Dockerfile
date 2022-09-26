es (10 sloc)  318 Bytes

FROM debian:latest



RUN apt update && apt upgrade -y

RUN apt install git curl python3-pip ffmpeg docker.io -y

RUN pip3 install -U pip

RUN cd /

RUN git clone https://github.com/mkasajim/pihole

RUN cd /pihole

WORKDIR /pihole

CMD chmod u+x ./pihole.sh

CMD bash ./pihole.sh
