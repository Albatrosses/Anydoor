FROM alpine
RUN apk update \ 
    && apk add --update git mysql mysql-client nodejs npm zsh openssh bash sudo \
    && git config --global user.name Albatrosses \
    && git config --global user.email capitalism_4418@163.com \
    && git config --global credential.helper store \
    && npm i -g yarn \
    && yarn global add typescript eslint tslint serverless \
    && sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" \
    && cd /root/workspace