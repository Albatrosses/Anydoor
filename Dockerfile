FROM alpine
LABEL Author ="pujunhao"
RUN apk update && \ 
    apk add --update git mysql nodejs npm zsh openssh && \
    git config --global user.name pu-junhao && \
    git config --global user.email pu.junhao@rea-group.com && \
    npm i -g yarn && \
    yarn global add typescript eslint tslint serverless && \
    sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" && \
    mkdir /root/workspace/bussiness && \
    mkdir /root/workspace/private && \
    cd /root/workspace/private && \
    git config user.name Albatrosses && \
    git config user.email capitalism_4418@163.com && \
    git config credential.helper store