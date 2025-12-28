# 🚀 Como Visualizar e Publicar a Documentação

## 📋 Pré-requisitos

Certifique-se de ter instalado:
- Node.js (versão 18 ou superior)
- npm ou yarn
- Git

## 🖥️ Preview Local

### 1. Instalar Mintlify CLI

```bash
npm i -g mintlify
```

### 2. Navegar até o diretório do projeto

```bash
cd /home/joaov/projetos/Sicad-Docs
```

### 3. Iniciar o servidor de desenvolvimento

```bash
mintlify dev
```

O comando acima irá:
- Iniciar um servidor local
- Abrir automaticamente o navegador em `http://localhost:3000`
- Recarregar automaticamente ao detectar mudanças nos arquivos

### 4. Visualizar a documentação

Navegue pelas páginas criadas:
- **Início**: `/` - Página inicial
- **Quickstart**: `/quickstart` - Guia rápido
- **Manual do Usuário**: `/manual-usuario` - Manual completo
- **Calculadora de Pensão**: `/guias/calculadora-pensao`
- **Juros Abusivos**: `/guias/juros-abusivos`
- **Porcentagens**: `/guias/porcentagens`

## ✅ Checklist Pré-Publicação

Antes de publicar, verifique:

### Conteúdo
- [ ] Todos os links internos funcionam
- [ ] Imagens carregam corretamente
- [ ] Não há erros de ortografia
- [ ] Exemplos estão corretos
- [ ] Informações técnicas validadas

### Técnico
- [ ] docs.json está válido (JSON bem formado)
- [ ] Todas as páginas em docs.json existem
- [ ] Imagens estão na pasta `/images/`
- [ ] Não há erros no console do Mintlify
- [ ] Navegação está correta

### Visual
- [ ] Layout está correto em desktop
- [ ] Layout está correto em mobile
- [ ] Cards e componentes renderizam bem
- [ ] Código e exemplos estão formatados
- [ ] Screenshots têm boa qualidade

## 🌐 Publicação

### Opção 1: Mintlify Hosting (Recomendado)

O Mintlify oferece hospedagem gratuita com integração GitHub.

#### 1. Criar conta no Mintlify

Acesse [mintlify.com](https://mintlify.com) e crie uma conta.

#### 2. Conectar repositório GitHub

```bash
# Se ainda não tem repositório Git
git init
git add .
git commit -m "Documentação inicial do SICAD"

# Criar repositório no GitHub e fazer push
git remote add origin https://github.com/seu-usuario/sicad-docs.git
git push -u origin main
```

#### 3. Importar projeto no Mintlify

1. No dashboard do Mintlify, clique em "New Project"
2. Conecte sua conta do GitHub
3. Selecione o repositório `sicad-docs`
4. Mintlify irá detectar automaticamente o `docs.json`
5. Aguarde o build e deploy automático

#### 4. Configurar domínio customizado (opcional)

No dashboard do Mintlify:
- Settings → Domain
- Configure um subdomínio ou domínio customizado
- Exemplo: `docs.sicad.defensoria.rs.gov.br`

### Opção 2: Self-Hosting

Para hospedar em servidor próprio:

#### 1. Build do projeto

```bash
mintlify build
```

Isso gerará uma pasta `_site` com HTML estático.

#### 2. Deploy em servidor web

Copie a pasta `_site` para seu servidor web (Apache, Nginx, etc.)

```bash
# Exemplo com rsync
rsync -avz _site/ usuario@servidor:/var/www/sicad-docs/
```

#### 3. Configurar servidor web

**Nginx** exemplo:
```nginx
server {
    listen 80;
    server_name docs.sicad.example.com;
    root /var/www/sicad-docs;
    index index.html;

    location / {
        try_files $uri $uri/ /index.html;
    }
}
```

### Opção 3: GitHub Pages

#### 1. Configurar GitHub Actions

Crie `.github/workflows/deploy.yml`:

```yaml
name: Deploy Mintlify Docs

on:
  push:
    branches: [main]

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      
      - name: Setup Node
        uses: actions/setup-node@v2
        with:
          node-version: '18'
      
      - name: Install Mintlify
        run: npm i -g mintlify
      
      - name: Build
        run: mintlify build
      
      - name: Deploy to GitHub Pages
        uses: peaceiris/actions-gh-pages@v3
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
          publish_dir: ./_site
```

#### 2. Ativar GitHub Pages

1. Vá em Settings → Pages
2. Source: Deploy from a branch
3. Branch: `gh-pages`
4. Save

A documentação estará disponível em:
`https://seu-usuario.github.io/sicad-docs/`

## 🔄 Processo de Atualização

### Atualização de Conteúdo

1. **Editar arquivos MDX**
   ```bash
   # Edite os arquivos necessários
   vim manual-usuario.mdx
   ```

2. **Testar localmente**
   ```bash
   mintlify dev
   ```

3. **Commit e push**
   ```bash
   git add .
   git commit -m "Atualização: descrição da mudança"
   git push
   ```

4. **Deploy automático**
   - Mintlify: Deploy automático após push
   - GitHub Pages: Actions executará build automaticamente

### Atualização de Screenshots

1. **Capturar novos screenshots**
   - Use as mesmas convenções de nomenclatura
   - Salve em `/images/`

2. **Atualizar referências**
   - Procure por `<img src="/images/old-image.png"` nos MDX
   - Substitua pelo novo nome

3. **Testar e publicar**
   - Verifique que imagens carregam
   - Faça commit e push

## 🐛 Troubleshooting

### Erro: "Page not found"

**Causa**: Página referenciada em `docs.json` não existe

**Solução**:
```bash
# Verifique se todos os arquivos existem
ls -la guias/
# Crie arquivos faltantes ou remova de docs.json
```

### Erro: "Invalid JSON in docs.json"

**Causa**: JSON mal formatado

**Solução**:
```bash
# Valide o JSON online ou use jq
cat docs.json | jq .
```

### Imagens não carregam

**Causa**: Caminho incorreto ou arquivo não existe

**Solução**:
```bash
# Verifique se imagens existem
ls -la images/
# Corrija caminhos nos MDX (deve ser /images/nome.png)
```

### Build falha no Mintlify

**Causa**: Syntax error em MDX ou componente inválido

**Solução**:
```bash
# Rode localmente para ver erros detalhados
mintlify dev
# Verifique logs no terminal
```

## 📊 Analytics (Opcional)

### Adicionar Google Analytics

Em `docs.json`:

```json
{
  "analytics": {
    "ga4": {
      "measurementId": "G-XXXXXXXXXX"
    }
  }
}
```

### Adicionar Plausible Analytics

```json
{
  "analytics": {
    "plausible": {
      "domain": "docs.sicad.example.com"
    }
  }
}
```

## 🔒 Segurança

### Proteção por Senha (opcional)

Se usar Mintlify hosting:
- Settings → Access Control
- Configure senha ou autenticação

### HTTPS

- Mintlify: HTTPS automático
- Self-hosting: Configure certificado SSL (Let's Encrypt)

## 📞 Suporte

### Mintlify
- Documentação: https://mintlify.com/docs
- Discord: https://discord.gg/mintlify
- Email: support@mintlify.com

### SICAD
- Email: calculos@defensoria.rs.def.br

## 🎯 Comandos Rápidos

```bash
# Preview local
mintlify dev

# Build para produção
mintlify build

# Validar docs.json
cat docs.json | jq .

# Ver estrutura de arquivos
tree -L 2

# Buscar texto em todos os MDX
grep -r "texto" *.mdx guias/*.mdx

# Verificar links quebrados (instale linkchecker)
linkchecker http://localhost:3000
```

---

## ✅ Checklist de Publicação Final

- [ ] Documentação revisada e validada
- [ ] Preview local funcionando perfeitamente
- [ ] Todos os links testados
- [ ] Imagens otimizadas e carregando
- [ ] Repositório Git configurado
- [ ] Build de produção executado sem erros
- [ ] Deploy realizado com sucesso
- [ ] URL de produção acessível
- [ ] Navegação testada em produção
- [ ] Mobile responsive verificado
- [ ] Analytics configurado (se aplicável)
- [ ] Equipe notificada da publicação
- [ ] Link adicionado ao sistema SICAD

---

**Boa sorte com a publicação! 🚀**

*Última atualização: 28/12/2025*
