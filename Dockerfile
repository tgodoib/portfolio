FROM oven/bun as build

WORKDIR /app
COPY package.json package.json
RUN bun install

COPY . .
RUN bun run build

FROM nginx:stable
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build /app/build /usr/share/nginx/html
