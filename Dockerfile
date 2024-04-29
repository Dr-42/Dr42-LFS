FROM alpine:3.17

RUN apk add --no-cache \
    bash \
    binutils \
    bison \
    coreutils \
    diffutils \
    findutils \
    gawk \
    gcc \
    g++ \
    grep \
    gzip \
    make \
    m4 \
    patch \
    perl \
    python3 \
    sed \
    tar \
    texinfo \
    vim \
    xz 

RUN apk del --no-cache apk-tools

