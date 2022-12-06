FROM node:16
ARG SSH_PUB_KEY
EXPOSE 8080
#RUN echo "${SSH_PUB_KEY}" > /root/.ssh/authorized_keys
#RUN echo -e "PasswordAuthentication no" >> /etc/ssh/sshd_config

COPY ./src/ /home/node/app
WORKDIR /home/node/app
RUN npm install
ENTRYPOINT ["node","server.js"]
