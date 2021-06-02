 FROM node:12-alpine
 RUN apk add --no-cache python g++ make
 WORKDIR /usr/local/alpine/src/github.com/nirajvishwakarma/keel-prac/app
 COPY . /usr/local/go/src/github.com/nirajvishwakarma/keel-prac/app
 RUN yarn install --production
 CMD ["node", "src/index.js"]
