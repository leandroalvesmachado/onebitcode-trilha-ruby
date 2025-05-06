# Módulo 13 - Desenvolvimento APIs

## Criando projeto 
```ruby
  rails new auth --database=postgresql --css=tailwind
```
* PostgreSQL como banco de dados
* Tailwind CSS para estilização

## Gems
* Devise (Autenticação de usuários)
* Pundit (Autorização baseada em políticas)
* Rolify (Gerenciamento de papéis (roles). Funciona bem com Devise e Pundit)

## CRUD
```ruby
  rails g scaffold Article title description:text
```

* Gerar um CRUD completo para o modelo Article com os campos: title (string) description (text)

## Compilando Assets
```ruby
  rails assets:precompile
```

* Serve para pré-compilar os assets (JavaScript, CSS, imagens, etc.), geralmente usado em produção, mas também pode ser útil para:
* Garantir que Tailwind e outros assets estejam prontos
* Identificar problemas de compilação (como erros em CSS/JS)
* Simular o que vai acontecer na build da sua aplicação (como no Heroku ou outra infra)
* Se estiver rodando em desenvolvimento, você não precisa rodar isso manualmente. O Rails faz o build dos assets "on the fly" com o ./bin/dev

## Instalando a Gem Devise
```ruby
  bundle add devise
```

```ruby
  rails generate devise:install
```

## Cria o model User (caso ainda não exista) com a configuração necessária para autenticação
```ruby
  rails generate devise User
```
```ruby
  rails db:migrate
```

## É um filtro que você coloca nos seus controllers para exigir que o usuário esteja logado antes de acessar uma ação.
```ruby
before_action :authenticate_user!
```

## Customizando views do devise
```ruby
  rails generate devise:views User
```

## Buscando rotas
```ruby
  rails routes -g user
```

## Recuperando usuário logado
```ruby
  current_user.email
```

## Instalando a Gem Pundit
```ruby
  bundle add pundit
```
```ruby
  rails g pundit:install
```

## Recriando banco e executando migrations
```ruby
  rails db:drop db:create db:migrate --trace
```

## Criar política para um modelo
```ruby
  rails g pundit:policy article
```

## Instalando a Gem Rolify
### Serve para gerenciar papéis ou perfis (roles) de usuários em aplicações Rails. Ela é especialmente útil quando você precisa de um sistema flexível de autorização baseado em perfis, cargos ou permissões atribuídas a usuários, como "admin", "editor", "moderador", etc
```ruby
  bundle add rolify
```
### Gerar o model Role e configurar a associação com User
```ruby
  rails g rolify Role User
```
```ruby
  rails db:migrate
```

### Adicionando papel
```ruby
  user1 = User.first
```
```ruby
  user1.add_role :writer
```
```ruby
  user2 = User.second
```
```ruby
  user2.add_role :editor
```

### Verificar papel
```ruby
  user1.has_role? :admin
```
```ruby
  user1.has_role? :writer
```
