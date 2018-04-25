FROM alpine:3.7

ADD ./run-weechat /usr/local/bin/run-weechat

RUN apk add --update \
        py2-pip \
        s6 \
        tzdata \
        weechat \
        weechat-aspell \
        weechat-dev \
        weechat-lua \
        weechat-perl \
        weechat-python \
        weechat-ruby \
 && pip install websocket-client \
 && rm -rf /var/cache/apk/*

ENV HOME=/
ENTRYPOINT ["/usr/local/bin/run-weechat"]
