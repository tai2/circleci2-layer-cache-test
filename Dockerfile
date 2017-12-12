FROM alpine:3.7

RUN apk add --no-cache nodejs

ENV HOME=/home/nodejs
RUN adduser -D nodejs
WORKDIR ${HOME}

COPY --chown=nodejs:nodejs package*.json ./

USER nodejs
RUN npm install

COPY --chown=nodejs:nodejs . .

EXPOSE 3000
CMD ["node", "index.js"]
