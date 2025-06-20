FROM alpine
RUN apk update \ 
    && apk add --update git nodejs npm zsh openssh bash sudo python3 alpine-sdk zip \
    && git config --global user.name Albatrosses \
    && git config --global user.email capitalism_4418@163.com \
    && git config --global credential.helper store \
    && npm i -g typescript eslint @vue/cli node-gyp \
    && sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" \
    && mkdir -p /root/workspace \
    && cd /root/workspace