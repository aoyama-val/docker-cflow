FROM ubuntu:latest

RUN \
    echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile && \
    apt-get -y update && \
    apt-get install -y wget make gcc && \
    cd /root && \
    wget "https://ftp.gnu.org/gnu/cflow/cflow-latest.tar.gz" && \
    tar xvf cflow-latest.tar.gz && \
    cd cflow-* && \
    ./configure && make && make install

CMD ["/usr/local/bin/cflow", "--help"]