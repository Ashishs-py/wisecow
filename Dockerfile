# Use an appropriate base image
FROM ubuntu:22.04


WORKDIR /app


RUN apt-get update && \
    apt-get install -y fortune-mod cowsay netcat


ENV PATH="$PATH:/usr/games"


COPY wisecow.sh /usr/local/bin/wisecow.sh


RUN chmod +x /usr/local/bin/wisecow.sh


EXPOSE 4499

ENTRYPOINT ["/usr/local/bin/wisecow.sh"]

