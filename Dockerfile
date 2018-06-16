FROM gcr.io/visionbi-demo/fast-data-dev:0bad5b0fa773bda7d67ae100507b102a0dc5370e
MAINTAINER Avi Gershon <avigershon at gmail com>

ADD setup-and-run-connect-distributed.sh /usr/local/bin
ADD supervisord.conf /etc/

RUN chmod +x /usr/local/bin/setup-and-run-connect-distributed.sh

EXPOSE 3030 8083 8000
ENTRYPOINT ["/usr/local/bin/dumb-init", "--"]
CMD ["/usr/local/bin/setup-and-run-connect-distributed.sh"]
