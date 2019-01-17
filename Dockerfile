FROM ubuntu
EXPOSE 8080
EXPOSE 1985
EXPOSE 1935
RUN apt update && apt upgrade -y && apt install sudo python ffmpeg git ca-certificates -y --no-install-recommends && cd / && git clone -b testing --single-branch https://github.com/patrickmoineau/srs.git && cd srs/trunk && ./configure && make && apt autoremove git gcc gpp make  -y && apt autoremove -y && apt autoclean -y && apt-get clean && rm -rf /var/lib/apt/lists/*
CMD ["sh", "/srs/run.sh"]