FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

COPY . /usr/share/nginx/html

RUN mv /usr/share/nginx/html/Multi*/* /usr/share/nginx/html/ || true

EXPOSE 80
