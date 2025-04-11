# Módulo 06 - Rails Fundamentos

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