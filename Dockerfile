FROM nginx:1.23.3

COPY nginx-selfsigned.key /etc/ssl/private/nginx-selfsigned.key 
COPY nginx-selfsigned.crt /etc/ssl/certs/nginx-selfsigned.crt;

COPY nginx.conf /etc/nginx/nginx.conf
