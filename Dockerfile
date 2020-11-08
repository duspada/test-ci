FROM nginx:1.13.3-alpine

LABEL maintainer="Michael"

RUN rm -rf /usr/share/nginx/html/*

COPY ./build /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/

EXPOSE 8080

## Application start arguments
CMD ["nginx","-g","daemon off;"]
