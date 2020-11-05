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
FROM node:lts-stretch-slim

ARG VERSION

RUN npm config set registry https://nexus.grx-dev.com/repository/npm-group/ && \
    npm config set progress=false && \
    npm config set depth 0

RUN npx install-peerdeps --registry=https://nexus.grx-dev.com/repository/npm-group/ -g @cybergrx/eslint-config
RUN npx install-peerdeps --registry=https://nexus.grx-dev.com/repository/npm-group/ -g @cybergrx/prettier-config

RUN npm install -g @cybergrx/eslint-config @cybergrx/prettier-config

COPY ts-lint.sh bin/ts-lint.sh
RUN chmod +x bin/ts-lint.sh

ENTRYPOINT ["ts-lint.sh"]