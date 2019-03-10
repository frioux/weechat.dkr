FROM alpine:3.9

ADD ./run-weechat /usr/local/bin/run-weechat
ADD ./build-weechat /usr/local/bin/build-weechat

RUN apk add --update \
        py2-pip \
        s6 \
        tzdata \
        wget \
        build-base \
        cmake \
        libgcrypt-dev \
        gnutls-dev \
        zlib-dev \
        curl-dev \
        ncurses-dev \
        aspell-dev \
        lua-dev \
        perl-dev \
        python2-dev \
        ruby-dev \
 && pip install websocket-client \
 && /usr/local/bin/build-weechat \
 && apk del build-base cmake wget \
 && rm -rf /var/cache/apk/*

ENV HOME=/
ENTRYPOINT ["/usr/local/bin/run-weechat"]
