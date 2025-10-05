FROM node:slim

WORKDIR /app

COPY index.js package.json ./

EXPOSE 3000

RUN apt update -y &&\
    chmod +x index.js &&\
    npm install 
    
CMD ["node", "index.js"]
