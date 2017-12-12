FROM alpine:3.7

ENV HOME=/home/nodejs

RUN adduser -D nodejs
WORKDIR ${HOME}

RUN apk add --no-cache nodejs

COPY --chown=nodejs:nodejs package*.json ./

USER nodejs
RUN npm install

COPY --chown=nodejs:nodejs . .

EXPOSE 3000
CMD ["npm", "start"]
