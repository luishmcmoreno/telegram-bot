FROM node:alpine
RUN apk add --no-cache vim
RUN mkdir -p /bot
RUN mkdir -p /cruzeirorss
WORKDIR /bot
COPY package.json /bot
RUN npm install
COPY run_bot.sh /bot
CMD chmod +x /bot/run_bot.sh
COPY index.js /bot
ENTRYPOINT ["/bot/run_bot.sh"]
