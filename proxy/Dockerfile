FROM nginx
COPY nginx.conf /etc/nginx/nginx.conf.template
COPY run.sh /etc/nginx/run.sh
COPY index.html /usr/share/nginx/html/

CMD ["/etc/nginx/run.sh"]