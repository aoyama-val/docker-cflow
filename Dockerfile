FROM alpine:latest

RUN \
    echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile && \
    apk --update add musl-dev wget make gcc && rm -rf /var/cache/apk/* \
    cd /root && \
    wget "https://ftp.gnu.org/gnu/cflow/cflow-latest.tar.gz" && \
    tar xvf cflow-latest.tar.gz && \
    cd cflow-* && \
    ./configure && make && make install

WORKDIR "/root"
CMD ["/usr/local/bin/cflow", "--help"]