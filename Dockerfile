#criando uma imagem
FROM nginx:latest

#cria um diretorio para trabalho
WORKDIR /app

RUN apt-get update && \
    apt-get install vim -y

#copiando arquivo do computador para o container. Nesse caso, substitui os arquivos index.html
COPY html/ /usr/share/nginx/nginx/html