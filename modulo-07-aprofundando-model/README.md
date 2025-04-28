# Módulo 07 - Aprofundado Model

* https://guides.rubyonrails.org/active_record_basics.html

## Model 
* Representa os dados e a lógica de negócios da aplicação
* Responde a consultas sobre seus dados e realiza atualizações quando os dados são modificados

## Migrations 
* Scripts que facilitam a alteração e versionamento do esquema de um banco de dados em um aplicativo

## Criar projeto sem testes e com postgresql 
* rails new model -T --database=postgresql

## Criar banco de dados
* rails db:create

## Criar model
* rails g model Product

## Executar as migrações
* rails db:migrate

## Acessar o console
* rails console ou rails c

## Executar seeds
* rails db:seed

## Comandos
* Product.first – Retorna o primeiro registro da tabela products.
* Product.last – Retorna o último registro da tabela.
* Product.second_to_last – Retorna o penúltimo registro da tabela.
* Product.find(id) – Busca um registro pelo ID. Lança exceção (ActiveRecord::RecordNotFound) se não encontrar.
* Product.find_by(name: "teste") – Busca o primeiro registro que tenha a coluna name com valor "teste". Retorna nil se não encontrar. Retorna 1 registro
* Product.where(name: "teste") – Retorna uma coleção (ActiveRecord::Relation) com todos os registros que tenham a coluna name com valor "teste".
* Product.order(name: :desc) – Retorna todos os produtos ordenados pela coluna name em ordem decrescente
* Product.count – Retorna o número total de registros na tabela products.
* Product.exists?(name: "teste") – Retorna true se existe pelo menos um produto com o nome "teste", ou false se não existe nenhum.
* Product.exists?(active: true, category: "Eletrônicos")

## Validações
* product.valid? - Dispara as validações (presence, uniqueness, length, etc.), mas não salva no banco. Retorna false se houver erros.
* product.errors - Mostra um objeto do tipo ActiveModel::Errors, que contém todos os erros de validação detectados.
* product.errors.full_messages - Retorna os erros em formato legível. Ex: ["Name can't be blank", "Name is too long (maximum is 255 characters)"]

## Seeds
* rails db:seeds - É usado para preencher o banco de dados com dados iniciais ou de teste, utilizando o arquivo db/seeds.rb

## Associações - has_many, belongs_to, has_one, has_and_belongs_to_many
* belongs_to - Define que este modelo pertence a outro modelo
* has_many - Define que este modelo tem vários registros de outro modelo
* has_one - Indica que um modelo possui um de outro modelo
* has_and_belongs_to_many - Essa associação é usada quando dois modelos têm uma relação muitos-para-muitos sem modelo intermediário com lógica adicional