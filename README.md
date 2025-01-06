# tiagogb.dev.br

## Developing

```bash
bun install
bun run dev
```

## Building
To create a production version:

```bash
docker build -t portfolio ./
docker run -p 3000:80 portfolio
```

You can now access through `localhost:3000`

