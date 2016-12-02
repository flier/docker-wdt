FROM ubuntu:16.04

RUN apt-get -y update && \
    apt-get install -y cmake git wget g++ && \
    apt-get install -y libssh-dev libgoogle-glog-dev libboost-system-dev libdouble-conversion-dev libjemalloc-dev && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/facebook/folly.git && \
    git clone https://github.com/facebook/wdt.git && \
    cd wdt; cmake .; make; make install; rm -rf folly wdt

ENV WDTDATA /data

VOLUME ["/data"]

RUN mkdir -p /data

WORKDIR /data

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["wdt"]