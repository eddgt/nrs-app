# Etapa de construcción
FROM node:lts AS build-stage

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

RUN rm -rf dist/js
RUN npm run build

# Etapa de producción con Nginx
FROM nginx:stable-alpine

COPY --from=build-stage /app/dist /usr/share/nginx/html

COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
