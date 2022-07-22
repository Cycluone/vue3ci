FROM node:lts
RUN yarn create vite
RUN mkdir -p /app
ENV HOST 0.0.0.0
COPY . /app
WORKDIR /app
EXPOSE 3000
RUN (yarn config set registry https://registry.npm.taobao.org) &&(yarn create vite) && (yarn config set sass-binary-site https://npm.taobao.org/mirrors/node-sass) && (yarn --production) && (yarn build)