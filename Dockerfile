FROM node:19-bullseye

WORKDIR /usr/src/app

RUN yarn init -y && yarn add puppeteer puppeteer-extra puppeteer-extra-plugin-stealth && apt-get update && apt-get install chromium -y && yarn upgrade

CMD ["node", "src/app.js"]