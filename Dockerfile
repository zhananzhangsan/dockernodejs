FROM node:alpine3.20

WORKDIR /tmp

COPY app.js package.json ./

EXPOSE 7860/tcp

RUN apk add --no-cache curl bash && \
    npm install && \
    chmod +x app.js

CMD ["npm", "start"]
