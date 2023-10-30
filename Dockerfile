FROM oven/bun:slim

WORKDIR /app

COPY . .

RUN bun install
RUN bun run build
RUN bun add -g serve

EXPOSE 3003

ENTRYPOINT ["serve", "-s", "build", "-l", "3003"]
