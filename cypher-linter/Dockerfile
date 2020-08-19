#########################################################################
#    _________        ___.                   ______________________  ___
#    \_   ___ \___.__.\_ |__   ___________  /  _____/\______   \   \/  /
#    /    \  \<   |  | | __ \_/ __ \_  __ \/   \  ___ |       _/\     /
#    \     \___\___  | | \_\ \  ___/|  | \/\    \_\  \|    |   \/     \
#     \______  / ____| |___  /\___  >__|    \______  /|____|_  /___/\  \
#            \/\/          \/     \/               \/        \/      \_/
#
#

# Pull Base Image
FROM buildpack-deps:bionic

ARG VERSION

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    apt-get install -y git peg autoconf automake libtool apt-utils && \
    git clone https://github.com/cleishm/libcypher-parser.git && \
    cd libcypher-parser && \
    ./autogen.sh && \
    ./configure && \
    make clean check && \
    make install && \
    cd .. && \
    ldconfig && \
    echo "${VERSION}" > cypher-linter.version

ENTRYPOINT ["cypher-lint", "--colorize"]
