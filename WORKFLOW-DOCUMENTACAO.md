# Workflow de Documentação do SICAD

## 📋 Estrutura de Documentação

Este documento descreve o processo e a organização para criar e manter a documentação do usuário do SICAD.

## 🎯 Objetivos da Documentação

1. **Clareza**: Instruções simples e diretas para usuários de todos os níveis
2. **Completude**: Cobrir todas as funcionalidades do sistema
3. **Visual**: Uso extensivo de screenshots e diagramas
4. **Atualização**: Manter sincronizada com as versões do sistema

## 📁 Estrutura de Arquivos

```
Sicad-Docs/
├── images/                          # Screenshots e imagens
│   ├── 01-pagina-inicial-completa.png
│   ├── 02-catalogo-servicos.png
│   ├── 03-pensao-formulario.png
│   ├── 04-pensao-preenchido.png
│   └── 05-pensao-resultado.png
│
├── manual-usuario.mdx               # Manual completo do usuário
├── index.mdx                         # Página inicial da documentação
├── quickstart.mdx                    # Guia rápido
├── development.mdx                   # Documentação técnica
│
├── guias/                            # Guias específicos (a criar)
│   ├── calculadora-pensao.mdx
│   ├── juros-abusivos.mdx
│   └── porcentagens.mdx
│
└── docs.json                         # Configuração Mintlify
```

## 🖼️ Diretrizes para Screenshots

### Padrões de Captura

1. **Tamanho**: Página completa quando necessário, ou seções específicas
2. **Formato**: PNG para qualidade e transparência
3. **Nomenclatura**: Numeração sequencial + descrição clara
   - Exemplo: `01-pagina-inicial-completa.png`
   - Exemplo: `03-pensao-formulario-preenchido.png`

### Categorias de Imagens

#### Screenshots de Interface
- **Página Inicial**: Visão geral do sistema
- **Navegação**: Menus e catálogo de serviços
- **Formulários**: Telas de entrada de dados
- **Resultados**: Tabelas e relatórios gerados

#### Screenshots Funcionais
- **Antes**: Estado inicial do formulário
- **Durante**: Formulário sendo preenchido
- **Depois**: Resultado do processamento

#### Screenshots de Detalhes
- **Tooltips**: Informações de ajuda
- **Validações**: Mensagens de erro/sucesso
- **Configurações**: Opções avançadas

### Processo de Captura

1. **Planejamento**
   - Listar todas as funcionalidades a documentar
   - Identificar pontos-chave para captura
   - Definir sequência lógica de uso

2. **Preparação**
   - Limpar dados de teste anteriores
   - Usar dados realistas mas não sensíveis
   - Verificar resolução e zoom adequados

3. **Captura**
   - Usar ferramenta de browser (Chrome DevTools)
   - Capturar tela inteira ou elementos específicos
   - Garantir que textos estejam legíveis

4. **Pós-Processamento**
   - Recortar áreas desnecessárias
   - Adicionar marcações se necessário (setas, destaques)
   - Otimizar tamanho sem perder qualidade
   - Salvar com nome descritivo

5. **Documentação**
   - Referenciar imagens nos arquivos MDX
   - Adicionar alt text descritivo
   - Incluir legenda quando apropriado

## ✍️ Diretrizes de Escrita

### Tom e Estilo

- **Amigável**: Linguagem acessível, evitando jargões técnicos
- **Objetivo**: Instruções diretas e acionáveis
- **Completo**: Não assumir conhecimento prévio
- **Visual**: Preferir mostrar com imagens quando possível

### Estrutura de Conteúdo

#### Página Inicial
- Introdução breve ao sistema
- Cards com links para principais seções
- Informações de versão e atualizações

#### Guias de Funcionalidades
1. **Introdução**: O que é e para que serve
2. **Características**: Principais recursos
3. **Passo a Passo**: Instruções detalhadas
4. **Exemplos**: Casos de uso práticos
5. **Dicas**: Melhores práticas
6. **Troubleshooting**: Problemas comuns

### Componentes Mintlify Utilizados

```mdx
# Cards para navegação
<Card title="Título" icon="icone" href="/link">
  Descrição
</Card>

# Grupos de Cards
<CardGroup cols={2}>
  <Card ... />
  <Card ... />
</CardGroup>

# Callouts para destacar informações
<Note>Informação adicional</Note>
<Tip>Dica útil</Tip>
<Warning>Atenção importante</Warning>
<Info>Informação contextual</Info>

# Accordions para conteúdo expansível
<Accordion title="Título">
  Conteúdo detalhado
</Accordion>

# Tabs para alternativas
<Tabs>
  <Tab title="Opção 1">Conteúdo</Tab>
  <Tab title="Opção 2">Conteúdo</Tab>
</Tabs>

# Steps para processos
<Steps>
  <Step title="Passo 1">Descrição</Step>
  <Step title="Passo 2">Descrição</Step>
</Steps>
```

## 🔄 Processo de Atualização

### Quando Atualizar

1. **Nova Funcionalidade**: Adicionar seção completa
2. **Mudança de Interface**: Atualizar screenshots
3. **Correção de Bug**: Revisar instruções afetadas
4. **Feedback de Usuários**: Clarificar pontos confusos

### Checklist de Atualização

- [ ] Identificar mudanças no sistema
- [ ] Capturar novos screenshots necessários
- [ ] Atualizar texto da documentação
- [ ] Revisar links internos
- [ ] Testar navegação
- [ ] Atualizar número de versão
- [ ] Adicionar nota no histórico de mudanças

## 🎨 Padrões Visuais

### Cores e Ícones

Usar ícones consistentes do Font Awesome:
- 🏠 `house` - Página inicial
- 🧮 `calculator` - Calculadoras
- 📊 `chart-line` - Análises e relatórios
- ⚙️ `gear` - Configurações
- 🆘 `life-ring` - Suporte
- 📚 `book` - Documentação
- ✅ `check` - Sucesso/Confirmação
- ⚠️ `warning` - Atenção
- ❌ `xmark` - Erro

### Layout de Páginas

**Estrutura Padrão**:
1. Título e descrição
2. Imagem de destaque (se aplicável)
3. Índice de navegação
4. Conteúdo principal com seções
5. Links relacionados ao final
6. Informações de suporte

## 📊 Métricas de Qualidade

### Indicadores de Boa Documentação

- **Cobertura**: Todas as funcionalidades documentadas
- **Atualidade**: Sincronizada com versão atual do sistema
- **Clareza**: Feedback positivo de usuários
- **Completude**: Usuários conseguem realizar tarefas sem suporte adicional
- **Visual**: Screenshots atualizados e relevantes

### Feedback e Melhorias

- Coletar feedback através do formulário de suporte
- Analisar dúvidas frequentes
- Identificar lacunas na documentação
- Priorizar melhorias com base no impacto

## 🛠️ Ferramentas Utilizadas

### Desenvolvimento
- **Mintlify**: Framework de documentação
- **MDX**: Formato de escrita (Markdown + JSX)
- **VS Code**: Editor de código

### Captura de Screenshots
- **Chrome DevTools**: Ferramenta de browser
- **MCP Chrome Tool**: Automação de capturas

### Versionamento
- **Git**: Controle de versão
- **GitHub**: Repositório remoto

## 📝 Checklist Final

Antes de publicar qualquer atualização:

- [ ] Todos os screenshots estão atualizados
- [ ] Links internos funcionando
- [ ] Links externos verificados
- [ ] Texto revisado (ortografia e gramática)
- [ ] Exemplos testados no sistema
- [ ] Versão atualizada em docs.json
- [ ] Histórico de mudanças atualizado
- [ ] Preview local verificado
- [ ] Aprovação da equipe técnica

## 🚀 Próximos Passos

### Curto Prazo
1. Adicionar guias individuais para cada serviço
2. Criar seção de FAQ expandida
3. Adicionar vídeos tutoriais (futuro)

### Médio Prazo
1. Documentação técnica para desenvolvedores
2. Guia de integração com outros sistemas
3. API documentation

### Longo Prazo
1. Internacionalização (EN, ES)
2. Documentação interativa
3. Chatbot de ajuda integrado

---

## 📞 Contato da Equipe de Documentação

**CATE-RS - Setor de Cálculos**
- 📧 calculos@defensoria.rs.def.br
- 🌐 www.defensoria.rs.def.br

---

*Última atualização: 28/12/2025*
