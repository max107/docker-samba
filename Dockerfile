FROM alpine:edge
RUN apk add --update \
    samba-common-tools \
    samba-client \
    samba-server \
    && rm -rf /var/cache/apk/*
# exposes samba's default ports (137, 138 for nmbd and 139, 445 for smbd)
EXPOSE 137/udp 138/udp 139/tcp 445/tcp
ENTRYPOINT ["smbd", "--foreground", "--no-process-group", "--log-stdout"]
CMD []
