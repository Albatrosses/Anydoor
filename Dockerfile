FROM alpine
LABEL Author ="pujunhao"
WORKDIR /root
RUN mkdir workspace
WORKDIR /workspace
RUN mkdir bussiness
RUN mkdir private