FROM node:12.10.0-stretch

WORKDIR /
ADD entrypoint.sh /entrypoint.sh
RUN \
    mkdir /meshcommander && \
    cd /meshcommander && \
    npm install meshcommander 

ENTRYPOINT ["/entrypoint.sh"]