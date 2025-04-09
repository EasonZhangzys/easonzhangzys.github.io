FROM node:20-alpine
RUN npm install -g hexo-cli
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
CMD ["hexo", "server"]