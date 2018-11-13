FROM nginx:alpine

LABEL maintainer="tjveil@gmail.com"

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 6060

CMD ["nginx", "-g", "daemon off;"]