FROM node:18 as build
WORKDIR /src
COPY package*.json .
RUN npm install
COPY . .

FROM node:18-alpine
WORKDIR /src
COPY --from=build /src .
CMD ["node", "server.js"]
