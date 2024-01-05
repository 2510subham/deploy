FROM node:18-alpine
RUN apk update && apk add tzdata
ENV TZ=Asia/Kolkata
WORKDIR /
COPY ./package.json .
RUN npm i
COPY . .
EXPOSE 3000
CMD [ "npm","run","start" ]
