FROM node:10-alpine
USER node
RUN mkdir -p /home/node/app/
RUN chown -R node:node /home/node/app
WORKDIR /home/node/app
COPY --chown=node:node  . .
RUN npm install
EXPOSE 8080/tcp
CMD ["node","app.js"]


