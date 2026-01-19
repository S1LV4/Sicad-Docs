## Como rodar a documentação no seu computador

1. **Instale o Mintlify (uma ferramenta de linha de comando)**
   Abra o terminal (cmd) e rode este comando:

   ```
   npm i -g mint
   ```

   Caso não tenha o npm instalado (nodejs): https://nodejs.org/en/download

2. **Entre na pasta da documentação**
   Vá até a pasta onde está o arquivo `docs.json`.

3. **Inicie a documentação localmente**
   Rode o comando:

   ```
   mint dev
   ```

4. **Abra no navegador**
   Acesse este endereço no navegador:

   ```
   http://localhost:3000
   ```

---

 **Envie as alterações para o GitHub**
   Sempre que você fizer um `push` para a branch principal do repositório,
   a documentação será **publicada automaticamente** em produção.

---
