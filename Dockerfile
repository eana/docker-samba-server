FROM alpine:3.18.5

RUN set -xe && \
    apk add --update --no-cache samba vim

ADD smb.conf /etc/samba/smb.conf

CMD smbd --foreground --log-stdout --no-process-group
