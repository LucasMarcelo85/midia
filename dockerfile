# Usa a imagem oficial e leve do Nginx baseada em Alpine
FROM nginx:alpine

# Remove a página padrão do Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia o index.html e o vídeo para a pasta padrão onde o Nginx lê os arquivos estáticos
COPY index.html /usr/share/nginx/html/
COPY video.mp4 /usr/share/nginx/html/

# Expõe a porta 80 para tráfego web
EXPOSE 80

# Inicia o Nginx em primeiro plano
CMD ["nginx", "-g", "daemon off;"]