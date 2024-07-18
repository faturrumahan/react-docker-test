# stage 1: build form official release docker hub node.js images
FROM node:lts-alpine as build

# set the working directory
WORKDIR /app

# COPY the package.json and package-lock.json
COPY package*.json ./

# install the dependencies
RUN npm install

# COPY the rest of application code
COPY . .

# start the app
EXPOSE 3000
CMD [ "npm", "run", "dev" ]