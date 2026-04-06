FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

COPY PBA-1/ /usr/share/nginx/html/

EXPOSE 80
