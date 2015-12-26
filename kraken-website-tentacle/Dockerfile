FROM node:4

RUN apt-get update && apt-get install -y \
        imagemagick \
        graphicsmagick \ 
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ADD ./bundle /

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]