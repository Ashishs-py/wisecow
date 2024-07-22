FROM ubuntu:22.04
ENV SRVPORT=4499
ENV RSPFILE=response
RUN apt-get update && \
    apt-get install -y fortune-mod cowsay netcat && \
    rm -rf /var/lib/apt/lists/*
COPY wisecow.sh /usr/local/bin/wisecow.sh
RUN chmod +x /usr/local/bin/wisecow.sh
EXPOSE 4499
CMD ["/usr/local/bin/wisecow.sh"]
