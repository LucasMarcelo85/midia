FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

# Copia o index.html e o vídeo correto para a pasta do Nginx
COPY index.html /usr/share/nginx/html/
COPY dani.mp4 /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]