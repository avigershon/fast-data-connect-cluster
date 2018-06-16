FROM gcr.io/visionbi-demo/fast-data-dev:3508ebbf47370b20d3451381341db7e65f58fcf2
MAINTAINER Avi Gershon <avigershon at gmail com>

ADD setup-and-run-connect-distributed.sh /usr/local/bin
ADD supervisord.conf /etc/

RUN chmod +x /usr/local/bin/setup-and-run-connect-distributed.sh

EXPOSE 3030 8083 8000
ENTRYPOINT ["/usr/local/bin/dumb-init", "--"]
CMD ["/usr/local/bin/setup-and-run-connect-distributed.sh"]
