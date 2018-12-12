FROM nginx:1.15.7

COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /usr/share/nginx/html/index.html
COPY default.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /etc/nginx/html 

WORKDIR /etc/nginx

CMD ["nginx"]

EXPOSE 80

