FROM node:lts
RUN mkdir -p /app
ENV HOST 0.0.0.0
COPY . /app
WORKDIR /app
EXPOSE 3000
RUN (pnpm install) && (pnpm run dev)