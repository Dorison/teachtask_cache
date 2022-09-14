FROM node:10 as build
WORKDIR /src
COPY package*.json .
RUN npm install
COPY . .

FROM node:10-alpine
WORKDIR /src
COPY --from=build /src .
CMD ["node", "server.js"]
