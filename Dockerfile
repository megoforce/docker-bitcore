FROM node:4
RUN apt-get update -y
RUN apt-get install -y libzmq3-dbg libzmq3-dev libzmq3
RUN npm install -g bitcore
EXPOSE 3001
WORKDIR /bitcore
ADD entrypoint.sh /bitcore
RUN chmod +x entrypoint.sh
CMD bitcored