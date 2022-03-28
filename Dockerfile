# syntax=docker/dockerfile:1
FROM
Learn more about the "FROM" Dockerfile command.
 node:12-alpine
RUN apk add --no-cache python2 g++ make
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]
EXPOSE 3000
