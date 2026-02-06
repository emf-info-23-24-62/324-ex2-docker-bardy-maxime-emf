FROM node:20-alpine

WORKDIR /app

# dependencies dans app/
COPY app/package*.json ./
RUN npm install

# code dans app/
COPY app/ ./

EXPOSE 3000
CMD ["node", "server.js"]
