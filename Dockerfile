# Usar Node.js
FROM node:18-alpine

# Criar diretório de trabalho
WORKDIR /app

# Copiar package.json e yarn.lock
COPY package.json yarn.lock ./

# Instalar dependências
RUN yarn install --production

# Copiar o restante do código
COPY . .

# Informar a porta usada pela aplicação
EXPOSE 3000

# Comando de inicialização
CMD ["node", "src/index.js"]
