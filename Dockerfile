FROM node:12-alpine
RUN apk add --no-cache jq
RUN npm install -g jq-tutorial
ENTRYPOINT ["jq-tutorial"]
