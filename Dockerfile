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

# Create a group and user
RUN addgroup -S lfs-grp && adduser -S lfs -G lfs-grp
USER lfs

# Set the prompt
RUN echo "PS1='\[\033[01;32m\]\u@:\[\033[01;34m\]\w\[\033[00m\]\> '" > /home/lfs/.bashrc

# Set the working directory
WORKDIR /home/lfs
