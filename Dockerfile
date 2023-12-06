FROM nginx:1.25.3-alpine
COPY / /usr/share/nginx/html


RUN  useradd -m admin && echo "admin:admin" |  chpasswd &&  usermod -aG wheel  admin
USER admin