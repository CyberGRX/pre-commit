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
FROM k8s.gcr.io/kustomize/kustomize:v4.1.0

RUN apk add --no-cache bash=5.1.0-r0

COPY validateKustomization.sh /bin/validateKustomization.sh
RUN chmod +x /bin/validateKustomization.sh

WORKDIR /src

ENTRYPOINT ["validateKustomization.sh"]
