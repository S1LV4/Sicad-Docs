# Screenshots Capturados - SICAD

## 📸 Imagens Disponíveis

Durante a sessão de documentação, foram capturados os seguintes screenshots do sistema SICAD:

### 1. Página Inicial Completa
**Arquivo**: `01-pagina-inicial-completa.png`
- **Conteúdo**: Visão geral da página inicial do SICAD
- **Elementos principais**:
  - Header com logo e navegação
  - Banner principal "Por que usar o SICAD?"
  - Serviços em destaque
  - Calculadora de Juros Abusivos (formulário)
  - Informações do sistema (estatísticas)
  - Recursos e atualizações
  - Footer com informações institucionais

### 2. Menu de Navegação Aberto
**Captura**: Menu dropdown com opções
- Início
- Catálogo de Serviços

### 3. Catálogo de Serviços
**Arquivo**: `02-catalogo-servicos.png`
- **Conteúdo**: Página completa do catálogo
- **Elementos**:
  - Cards dos 3 serviços ativos:
    1. Pensão Alimentícia (ATIVO)
    2. Análise de Juros Abusivos (ATIVO)
    3. Porcentagens (ATIVO)
  - Serviço em desenvolvimento (Correção Monetária - EM BREVE)
  - Opção "Solicitar Novo Serviço"
  - Acesso rápido lateral
  - Atualizações recentes

### 4. Calculadora de Pensão - Formulário Vazio
**Arquivo**: `03-pensao-formulario.png`
- **Conteúdo**: Interface completa da calculadora
- **Seções visíveis**:
  - Dados do Processo (opcional)
  - Sessão de Cálculo (obrigatório)
  - Dados de Rendimento (obrigatório)
  - Tipo de Cálculo (Prisão/Penhora)
  - Configurações avançadas:
    - Juros Moratórios
    - Regras de Pagamento (13º, Vencimento Subsequente)
    - QR Code PIX
  - Botão de cálculo desabilitado (campos obrigatórios pendentes)

### 5. Calculadora de Pensão - Formulário Preenchido
**Arquivo**: `04-pensao-preenchido.png`
- **Conteúdo**: Formulário com dados de exemplo
- **Dados inseridos**:
  - Data Inicial: 01/01/2024
  - Data Final: 01/12/2025 (automática)
  - Atualizar até: 28/12/2025 (automática)
  - Base de Cálculo: Salário Mínimo R$ 1.518,00
  - Percentual: 20%
  - Valor atual da pensão: R$ 303,60
  - Tipo: Prisão (selecionado)
  - Índice: CMB-189-433 IGP-M + IPCA
  - Juros Legais: Ativados
  - 13º Salário: Disponível (período inclui dezembro)
- Botão "Calcular Pensão Alimentícia" habilitado

### 6. Resultado do Cálculo - Tabela Completa
**Arquivo**: `05-pensao-resultado.png`
- **Conteúdo**: Tela de resultado com tabela detalhada
- **Informações do cabeçalho**:
  - Período: 01/2024 a 12/2025 (24 meses)
  - Base: Salário Mínimo - 20%
  - Índice: CMB-189-433
  - Juros: Lei 14.905/2024
- **Tabela de parcelas** mostrando:
  - 24 linhas (jan/2024 a dez/2025)
  - Colunas: Mês, Venc., Base, %, Pensão, Pago, Devido, Índice, Corrigido, Vl. Juros, Total
  - Valores calculados com correção monetária e juros
- **Totalizador**:
  - Total Pensão: R$ 7.032,00
  - Total Pago: R$ 0,00
  - Total Devido: R$ 7.032,00
  - Total Corrigido: R$ 7.307,11
  - Total Juros: R$ 625,61
  - **TOTAL A RECEBER: R$ 7.932,72**
- **Consectários Legais**: Seção para selecionar multa e/ou honorários
- **Botões de ação**:
  - Compartilhar
  - Editar Cálculo
  - Novo Cálculo
  - Imprimir Relatório

## 📋 Uso nas Documentações

Estas imagens foram referenciadas nos seguintes arquivos:

1. **manual-usuario.mdx**
   - Uso: Ilustrar introdução e passo a passo completo
   - Imagens: Todas

2. **guias/calculadora-pensao.mdx**
   - Uso: Tutorial detalhado passo a passo
   - Imagens: 03, 04, 05

3. **index.mdx**
   - Uso: Página inicial da documentação
   - Imagens: 01, 02

## 🎯 Recomendações para Futuras Capturas

### Screenshots Adicionais Sugeridos

1. **Juros Abusivos - Interface**
   - Formulário vazio
   - Formulário preenchido
   - Resultado da análise (cada cenário: normal, elevado, abusivo)

2. **Porcentagens - Interface**
   - Cada tipo de cálculo separadamente
   - Exemplos de resultados

3. **Detalhes Específicos**
   - Tooltips de ajuda expandidos
   - Mensagens de validação
   - Estados de erro
   - Modal de compartilhamento
   - Seletor de índices de correção aberto
   - Configurações do PIX

4. **Responsividade**
   - Versão mobile do sistema
   - Tablets

5. **Relatórios**
   - Exemplo de PDF gerado
   - QR Code PIX incluído

### Diretrizes de Captura

✅ **Fazer**:
- Usar dados realistas mas não sensíveis
- Garantir boa resolução (mínimo 1920x1080)
- Capturar página completa quando relevante
- Nomear arquivos descritivamente
- Incluir alt text nas imagens
- Comprimir sem perder qualidade

❌ **Evitar**:
- Dados pessoais reais
- Informações sensíveis
- Screenshots cortados incorretamente
- Qualidade baixa ou pixelizada
- Nomes genéricos (screenshot1.png)

## 🔧 Ferramentas Utilizadas

- **Chrome DevTools**: Captura via MCP Browser Tool
- **Formato**: PNG (melhor qualidade e transparência)
- **Resolução**: Página completa ou elementos específicos
- **Pós-processamento**: Não aplicado (imagens originais)

## 📝 Notas

- Todas as capturas foram feitas no **ambiente de homologação** (v1.2.2)
- Data das capturas: **28/12/2025**
- Sistema estava **online** e funcional durante as capturas
- Total de cálculos no sistema na época: **125.847**

## 🔄 Manutenção

Atualizar screenshots quando:
- [ ] Houver mudanças significativas na interface
- [ ] Nova versão do sistema for lançada
- [ ] Feedback indicar screenshots desatualizados
- [ ] Novas funcionalidades forem adicionadas
- [ ] Mudanças de layout ou design

---

*Documento criado em: 28/12/2025*
*Última atualização: 28/12/2025*
