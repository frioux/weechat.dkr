FROM alpine:3.4

ADD ./run-weechat /usr/local/bin/run-weechat

RUN apk add --update \
        py-pip \
        s6 \
        tzdata \
        weechat \
        weechat-aspell \
        weechat-dev \
        weechat-doc \
        weechat-lua \
        weechat-perl \
        weechat-python \
        weechat-ruby \
 && pip install websocket-client \
 && rm -rf /var/cache/apk/*

ENV HOME=/
ENTRYPOINT ["/usr/local/bin/run-weechat"]
