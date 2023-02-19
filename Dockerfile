FROM python:alpine
WORKDIR /app

ENV VERSION "3.4"
ENV USERNAME "helix77"
ENV MINING_KEY "None"
ENV INTENSITY "25"
ENV THREADS "4"
ENV DIFFICULTY "MEDIUM"
ENV DONATE "0"
ENV RIG "TuringPi2-Cluster"
ENV LANGUAGE "english"
ENV SOC_TIMEOUT "20"
ENV REPORT_SEC "300"
ENV RASPI_LEDS "n"
ENV RASPI_CPU_IOT "y"
ENV DISCORD_RP "n"

RUN apk update && apk upgrade && apk add python3 py3-pip git libc6-compat py3-psutil gcc musl-dev linux-headers python3-dev
RUN /bin/sh -c python3 -m pip install requests colorama py-cpuinfo psutil pypresence
RUN git clone https://github.com/revoxhere/duino-coin --branch ${VERSION} /app
RUN mkdir -p "/app/Duino-Coin PC Miner ${VERSION}"
RUN touch /app/Duino-Coin\ PC\ Miner\ ${VERSION}/Settings.cfg
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh"]