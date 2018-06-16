FROM landoop/fast-data-dev:latest
MAINTAINER Marios Andreopoulos <marios@landoop.com>

ADD setup-and-run-connect-distributed.sh /usr/local/bin
ADD supervisord.conf /etc/

RUN chmod +x /usr/local/bin/setup-and-run-connect-distributed.sh

EXPOSE 3030 8083 8000
ENTRYPOINT ["/usr/local/bin/dumb-init", "--"]
CMD ["/usr/local/bin/setup-and-run-connect-distributed.sh"]
