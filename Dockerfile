FROM ubuntu:16.04

RUN apt-get -y update && \
    apt-get install -y cmake git wget g++ && \
    apt-get install -y libssh-dev libgoogle-glog-dev libboost-system-dev libdouble-conversion-dev libjemalloc-dev && \
    rm -rf /var/lib/apt/lists/*

RUN git clone folly && \
    git clone wdt && \
    cd wdt; cmake .; make && \
    make install; rm -rf folly wdt

CMD ["/usr/local/bin/wdt"]