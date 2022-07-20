FROM nginx
COPY nginx.conf /etc/nginx/nginx.conf.template
COPY run.sh /etc/nginx/run.sh
COPY index.html /usr/share/nginx/html/
#COPY ../samples/angular/modelix-angular-sandbox/dist/modelix-angular-sandbox /usr/share/nginx/html/angular

CMD ["/etc/nginx/run.sh"]