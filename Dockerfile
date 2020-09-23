FROM amazonlinux:latest
RUN curl https://sh.rustup.rs -sSf | /bin/sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"
RUN rustup install stable
RUN yum install -y gcc gcc-c++ make openssl openssl-devel
RUN mkdir /code
WORKDIR /code%