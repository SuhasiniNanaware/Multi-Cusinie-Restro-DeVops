FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

COPY . /usr/share/nginx/html

RUN cp -r /usr/share/nginx/html/* /tmp/backup || true
RUN mv /usr/share/nginx/html/*/* /usr/share/nginx/html/ || true

EXPOSE 80
