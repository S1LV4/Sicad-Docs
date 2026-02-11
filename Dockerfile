# Mintlify Documentation Server - Dockerfile
# 
# Este Dockerfile configura um servidor Mintlify Dev para servir
# a documentação do SICAD em produção usando o dev server oficial.

FROM node:20-alpine

# Metadados do container
LABEL maintainer="SICAD Team"
LABEL description="Mintlify Documentation Server for SICAD"
LABEL version="1.0"

# Definir diretório de trabalho
WORKDIR /app

# Instalar Mintlify CLI globalmente
RUN npm install -g mintlify@latest

# Copiar arquivos de configuração e documentação
COPY docs.json ./
COPY *.mdx ./
COPY essentials ./essentials
COPY guias ./guias
COPY images ./images
COPY logo ./logo
COPY favicon.svg ./

# Expor porta padrão do Mintlify Dev
EXPOSE 3000

# Health check para verificar se o servidor está respondendo
HEALTHCHECK --interval=30s --timeout=10s --start-period=40s --retries=3 \
  CMD wget --no-verbose --tries=1 --spider http://localhost:3000/ || exit 1

# Comando para iniciar o Mintlify Dev Server
# --host 0.0.0.0 permite acesso externo ao container
CMD ["mintlify", "dev", "--host", "0.0.0.0"]
