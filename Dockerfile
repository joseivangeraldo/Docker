# Usa a imagem oficial mais recente do Alpine Linux
FROM alpine:latest

# Atualiza os pacotes e instala o Apache (httpd) e o nasm
# Install Apache
RUN apk update && apk add apache2 && apk add nano && apk add nasm
   
# Cria o diretório padrão para o site do Apache, caso não exista
#RUN mkdir -p /var/www/localhost/htdocs

# Copia opcionalmente uma página inicial personalizada (descomente se tiver um index.html)
# COPY index.html /var/www/localhost/htdocs/index.html

# Expor a porta 80 para acesso web
EXPOSE 80

# Inicia o Apache em primeiro plano para manter o container rodando
CMD ["httpd", "-D", "FOREGROUND"]