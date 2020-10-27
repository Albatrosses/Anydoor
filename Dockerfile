FROM alpine
LABEL Author ="pujunhao"
RUN apk add git && \
    git config --global user.name Albatrosses && \
    git config --global user.email capitalism_4418@163.com && \
    git config --global credential.helper store && \
    apk add --update nodejs npm && \
    npm i -g yarn && \
    yarn global add typescript eslint tslint serverless && \
    apk add mysql mysql-client
WORKDIR /root/workspace
RUN mkdir bussiness
RUN mkdir private