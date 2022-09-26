es (10 sloc)  318 Bytes

FROM debian:latest



RUN apt update && apt upgrade -y

RUN apt install git curl python3-pip ffmpeg docker.io -y

RUN pip3 install -U pip

RUN cd /

RUN git clone --depth 1 https://github.com/pi-hole/pi-hole.git Pi-hole

RUN cd "Pi-hole/automated install/"

WORKDIR "/Pi-hole/automated install/"

CMD bash basic-install.sh
