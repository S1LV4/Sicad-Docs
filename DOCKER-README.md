# 📚 SICAD Docs - Mintlify Docker Setup

Configuração Docker para servir a documentação do SICAD usando Mintlify Dev Server.

## 🚀 Quick Start

```bash
# No diretório Sicad-Docs
docker-compose up -d

# Acessar documentação
# http://localhost:3005
```

---

## 🛠️ Comandos Úteis

### Gerenciamento do Container

```bash
# Parar container
docker-compose down

# Ver logs
docker logs sicad-docs-mintlify -f

# Reiniciar container
docker-compose restart

# Rebuild forçado
docker-compose up -d --build
```

### Health Check

```bash
# Verificar status do container
docker ps | grep sicad-docs

# Testar health endpoint
curl http://localhost:3005/
```

---

## 📁 Estrutura de Arquivos

```
Sicad-Docs/
├── Dockerfile                   # Dockerfile com Mintlify Dev
├── docker-compose.yml           # Orquestração
├── .dockerignore                # Otimização de build
├── DOCKER-README.md             # Este arquivo
├── docs.json                    # Configuração Mintlify
├── essentials/                  # Guias essenciais
├── guias/                       # Tutoriais
├── images/                      # Imagens
├── logo/                        # Logos
├── favicon.svg                  # Favicon
└── *.mdx                        # Páginas MDX
```

---

## ⚙️ Configuração

### Variáveis de Ambiente

Nenhuma variável obrigatória. O Mintlify Dev Server usa configuração padrão.

### Portas

| Porta | Serviço | Descrição |
|-------|---------|-----------|
| 3005  | Mintlify Dev | Servidor de documentação |

### Volumes (Hot-Reload)

Os volumes permitem **edição em tempo real**:

```yaml
volumes:
  - ./docs.json:/app/docs.json:ro
  - ./essentials:/app/essentials:ro
  - ./guias:/app/guias:ro
  - ./images:/app/images:ro
  - ./logo:/app/logo:ro
  - ./favicon.svg:/app/favicon.svg:ro
  - ./*.mdx:/app/*.mdx:ro
```

**Para produção sem hot-reload:** remover seção `volumes` do docker-compose.yml

---

## 🐛 Troubleshooting

### Erro: `mintlify build` não existe

✅ **Solução:** Arquivo já corrigido para usar `mintlify dev`.

A CLI do Mintlify **não possui comando `build`**. Em produção, use:
- **Opção 1:** `mintlify dev` em container (esta solução)
- **Opção 2:** Deploy no mintlify.com (hosting oficial)

### Container não inicia

```bash
# Ver logs detalhados
docker logs sicad-docs-mintlify

# Testar build isoladamente
docker build -t test-mintlify .
docker run --rm -p 3005:3000 test-mintlify
```

### Porta 3005 já está em uso

```bash
# Alterar porta no docker-compose.yml
ports:
  - "3006:3000"  # Usar porta 3006 no host
```

### Health check falhando

```bash
# Verificar se wget está instalado no container
docker exec sicad-docs-mintlify which wget

# Desabilitar health check temporariamente
# Comentar seção 'healthcheck' no docker-compose.yml
```

---

## 🔄 Workflow de Desenvolvimento

### 1. Desenvolvimento Local (sem Docker)

```bash
npm install -g mintlify
mintlify dev
# http://localhost:3000
```

### 2. Teste em Docker

```bash
docker-compose up
# http://localhost:3005
```

### 3. Deploy em Produção

**Opção A: Docker em servidor**
```bash
# Remover volumes do docker-compose (sem hot-reload)
docker-compose up -d
```

**Opção B: Mintlify Cloud (grátis para repos públicos)**
```bash
# Push no GitHub
git push origin main

# Configurar no mintlify.com
# Link: https://mintlify.com/docs/deployment
```

---

## 📝 Notas Importantes

1. **Mintlify CLI:** Não possui comando `build`. Use `dev` para produção.
2. **Performance:** Dev server é otimizado e adequado para produção.
3. **Hot-reload:** Volumes permitem edição em tempo real (desenvolvimento).
4. **Produção:** Remover volumes para build imutável.
5. **Porta:** Configurada para 3005 (evitar conflito com outras apps).

---

## 🔗 Links Úteis

- [Mintlify Docs](https://mintlify.com/docs)
- [Mintlify CLI](https://www.npmjs.com/package/mintlify)
- [Docker Best Practices](https://docs.docker.com/develop/dev-best-practices/)

---

## 📄 Licença

MIT License - SICAD Team © 2026
