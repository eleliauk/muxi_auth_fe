FROM node:16

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app

WORKDIR /usr/src/app/server

# Build server file
RUN npm install --registry=https://registry.npm.taobao.org

# Bundle app source
EXPOSE 3000
CMD [ "yarn", "start" ]