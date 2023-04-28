FROM alpine
RUN apk update \ 
    && apk add --update git nodejs npm zsh openssh bash sudo python3 alpine-sdk \
    && git config --global user.name Albatrosses \
    && git config --global user.email capitalism_4418@163.com \
    && git config --global credential.helper store \
    && npm i -g yarn \
    && yarn global add typescript eslint tslint serverless @vue/cli node-gyp \
    && sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" \
    && mkdir -p /root/workspace \
    && cd /root/workspace
RUN rc-update add docker boot
