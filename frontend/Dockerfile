FROM node:lts-alpine as build-stage
WORKDIR /app

COPY package*.json /app/
RUN npm install

COPY ./ /app/
# build in production 
ARG configuration=production
RUN npm run build -- --output-path=./dist/out --configuration $configuration

# Stage 1, basedgit  on Nginx, to have only the compiled app, ready for production with Nginx
FROM nginx:1.15

COPY --from=build-stage /app/dist/out/ /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/conf.d/default.conf