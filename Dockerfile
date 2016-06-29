FROM python:2.7

RUN pip install -I flexget transmissionrpc

RUN mkdir -p /root/.flexget \
    && touch /root/.flexget/config.yml

VOLUME ["/root/.flexget"]

COPY entrypoint.sh /entrypoint.sh
CMD ["/entrypoint.sh"]
