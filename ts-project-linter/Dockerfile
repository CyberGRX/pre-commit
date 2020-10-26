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

RUN npx install-peerdeps -g @cybergrx/eslint-config

RUN npx install-peerdeps -g @cybergrx/prettier-config

RUN npm install -g @cybergrx/eslint-config @cybergrx/prettier-config \
    echo "${VERSION}" > ts-project-linter.version

ENTRYPOINT ["eslint","--fix","--quiet","--config","/.eslintrc.js","--quiet","--format","codeframe","--resolve-plugins-relative-to","/usr/local/lib/node_modules"]
