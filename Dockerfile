FROM nginx:1.13-alpine

# Delete examplefiles
RUN rm /etc/nginx/conf.d/default.conf

COPY nginx.tmpl /etc/nginx/nginx.tmpl
COPY start-nginx.sh /start-nginx.sh
RUN chmod +x /start-nginx.sh
RUN mkdir /nginx_cache
VOLUME /nginx_cache

CMD ["/start-nginx.sh"]
