FROM alpine:latest

RUN apk add --no-cache python py-pip py-setuptools git ca-certificates bash curl

RUN pip install python-magic \
  && git clone https://github.com/s3tools/s3cmd.git /tmp/s3cmd \
  && cd /tmp/s3cmd \
  && python /tmp/s3cmd/setup.py install \
  && cd / \
  && rm -rf /tmp/s3cmd \
  && apk del py-pip git

WORKDIR /s3

ENTRYPOINT ["s3cmd"]
CMD ["--help"]
