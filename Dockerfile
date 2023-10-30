FROM node:lts-slim

WORKDIR /app

COPY . .

RUN npm install
RUN npm run build
RUN npm add -g serve

EXPOSE 3003

ENTRYPOINT ["serve", "-s", "build", "-l", "3003"]
