FROM node:16-alpine
RUN mkdir -p /app
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build
EXPOSE 3000
CMD ["npx", "next", "dev", "-H", "0.0.0.0", "-p", "3000"]