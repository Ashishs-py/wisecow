FROM ubuntu:22.04
RUN apt-get update && \
    apt-get install -y fortune-mod cowsay netcat && \
    rm -rf /var/lib/apt/lists/*
COPY wisecow.sh /usr/local/bin/wisecow.sh
RUN chmod +x /usr/local/bin/wisecow.sh
RUN ln -s /usr/games/fortune /usr/local/bin/fortune \
    && ln -s /usr/games/cowsay /usr/local/bin/cowsay \
    && ln -s /usr/bin/nc /usr/local/bin/nc
ENTRYPOINT ["/usr/local/bin/wisecow.sh"]
