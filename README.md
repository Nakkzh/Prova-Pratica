# Documentação

### Backend usados
- Node.js
- Express.js
- CORS
- MySQL2

---

## API Endpoints

| Método | Endpoint | Descrição |
|--------|----------|-----------|
| POST | `/login` | Autenticação simulada |
| POST | `/produtos` | Cadastrar produto |
| GET | `/produtos` | Listar produtos (com filtros) |
| GET | `/produtos/:id` | Detalhes de produto |
| PUT | `/estoque/entrada` | Registrar entrada |
| PUT | `/estoque/saida` | Registrar saída |
| GET | `/alertas` | Produtos abaixo do mínimo |
| GET | `/movimentacoes` | Histórico de movimentações |
| POST | `/usuarios` | Cadastrar novo usuário |
| DELETE | `/produtos/:id` | Excluir produto |

---

### Testes:

<img width="1558" height="507" alt="image" src="https://github.com/user-attachments/assets/4d43fdb8-1b84-4ec6-95b1-72e4af59872a" />

---

<img width="1541" height="564" alt="image" src="https://github.com/user-attachments/assets/9a3a15ce-d8d5-47a1-9041-0dd1911bc367" />
---

<img width="1564" height="333" alt="image" src="https://github.com/user-attachments/assets/3879d00d-8b23-4565-bc6e-11ab248d7bf6" />

---

### PROBLEMAS COMUNS

   Problema: "Erro de conexão com o servidor"
   Solução: Verifique se a API está rodando na porta 3001

   Problema: Login não funciona
   Solução: Verifique o Console do navegador, certifique-se que a API está rodando

   Problema: Produtos não aparecem
   Solução: Verifique se cadastrou produtos primeiro

---

### CENÁRIOS DE TESTE

   Cenário 1: Produto com estoque OK
   - Cadastre com estoque inicial 100 e mínimo 20
   - Faça saída de 50 unidades
   - Estoque deve ficar em 50 (ainda OK)

   Cenário 2: Alerta de estoque baixo
   - Cadastre com estoque inicial 25 e mínimo 30
   - Produto deve aparecer nos alertas
   - Faça entrada de 20 unidades
   - Alerta deve sumir

---

### Diagrama entidade-relacionamento (DER)

<img width="1436" height="842" alt="image" src="https://github.com/user-attachments/assets/830e0471-09a6-4adc-bd54-c5e7b8649306" />
