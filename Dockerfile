FROM nginx:1.21.6-alpine

# Configuration
ADD conf /etc/nginx
# Content
ADD content /var/www/html/

RUN chown -R nginx:nginx /var/www &&\
    chmod -R 644 /var/www/html/*
