FROM alpine:3.7

ADD install.sh install.sh
RUN sh install.sh && rm install.sh

ADD run.sh /opt/s3cmd/run.sh


WORKDIR /s3

ENTRYPOINT ["/opt/s3cmd/run.sh"]
