FROM ubuntu
EXPOSE 8080
EXPOSE 1985
EXPOSE 1935
RUN apt update
RUN apt install sudo -y
RUN apt install ffmpeg -y
RUN apt install python -y
RUN apt install git -y
<<<<<<< HEAD
RUN cd / && git clone -b testing --single-branch https://github.com/patrickmoineau/srs.git
RUN cd srs/trunk && ./configure && make
RUN apt-get -qy autoremove
RUN chmod +x /srs/run.sh
CMD ["python", "/srs/run.py"]
=======
RUN cd / && git clone https://github.com/patrickmoineau/srs.git
RUN cd srs/trunk && ./configure && make
RUN apt-get -qy autoremove
RUN chmod +x /srs/run.sh
CMD ["/bin/bash"]
>>>>>>> 18610edfd65241735fb0dc3415b1496824c21f97
