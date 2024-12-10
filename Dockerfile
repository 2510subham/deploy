FROM node:lts-bullseye-slim
ENV TZ=Asia/Kolkata
WORKDIR /
COPY ./package.json .
RUN npm i
COPY . .
EXPOSE 3000
CMD [ "npm","run","start" ]
