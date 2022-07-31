FROM golang:1.18

RUN apt update -y
RUN apt install curl wget unzip build-essential cmake git -y
RUN git clone --recurse-submodules -j8 https://github.com/ledgerwatch/erigon.git ; cd erigon ; make erigon ;

WORKDIR /erigon
