#Usar uma imagem base oficial do Node.js
FROM node:18-slim

#Definir o diretório de trabalho no container
WORKDIR / app

#Copiar o arquivo package.json e instalar as dependências
COPY package.json .
RUN npm install

#Copiar os demais arquivos do diretório para o container
COPY . .

#Expor a porta 8080 que o aplicativo Node.js usará
EXPOSE 8080

# Comando para rodar a aplicação
CMD ["npm", "start"]