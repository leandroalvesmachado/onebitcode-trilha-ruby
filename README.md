# onebitcode-trilha-ruby

# Manipulação de Dados - DML (CRUD)

DML (**Data Manipulation Language**) é um subconjunto da SQL utilizado para manipular dados dentro de um banco de dados. As operações básicas seguem o padrão **CRUD**:

- **C**reate (Criar/Inserir)
- **R**ead (Ler/Consultar)
- **U**pdate (Atualizar/Modificar)
- **D**elete (Excluir/Remover)

# Definição de Dados - DDL

**DDL (Data Definition Language)** é um subconjunto da SQL responsável pela definição e estruturação de bancos de dados, incluindo a criação, modificação e exclusão de tabelas e outros objetos.

As principais operações DDL são:

- **CREATE** – Criar estruturas (tabelas, índices, visões, etc.)
- **ALTER** – Modificar a estrutura existente
- **DROP** – Remover objetos do banco de dados
- **TRUNCATE** – Limpar todos os dados de uma tabela sem afetar sua estrutura

# Controle de Dados - DCL

**DCL (Data Control Language)** é um subconjunto da SQL responsável por gerenciar permissões e controle de acesso aos objetos do banco de dados.

As principais operações DCL são:

- **GRANT** – Conceder permissões a usuários ou funções
- **REVOKE** – Remover permissões de usuários ou funções

# Manipulação de Dados - DTL

**DTL (Data Transaction Language)** é um subconjunto da SQL responsável pelo controle de transações no banco de dados. Ele garante que operações sejam concluídas de forma segura e consistente.

As principais operações DTL são:

- **COMMIT** – Confirma uma transação no banco de dados
- **ROLLBACK** – Reverte uma transação não confirmada
- **SAVEPOINT** – Define um ponto intermediário dentro de uma transação
- **SET TRANSACTION** – Define características específicas para uma transação

# Comando MongoDB (Terminal)

** Tabelas são chamadas de Collections

- show dbs;
- use cruddb;
- show collections;
- db.createCollection('users')
- show collections;
- db.users.insertOne({name: "Fulano", email:"fulano@email.com", phone:"3243432"})
- db.users.insertOne({name: "Test", email:"test@email.com", phone:"67687634"})
- db.users.find({})
- db.users.find({name:"Test"})
- db.users.deleteOne({name:"Fulano"})