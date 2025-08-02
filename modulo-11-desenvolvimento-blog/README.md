# Módulo 11 - Desenvolvimento Blog

## Criar banco de dados (blog)
```ruby
  rails db:create
```

## Para adicionar o scaffold de posts vamos executar os comandos:
```ruby
  rails g scaffold post title:string body:text
```
```ruby
  rails db:migrate
```

## Adicionando quantidade de visualizações a um Post
```ruby
  rails g migration add_views_to_posts views:integer
```
```ruby
  rails db:migrate
```

## Associando usuário ao post
```ruby
  rails g migration add_user_to_posts user:belongs_to
```
```ruby
  rails c
```
```ruby
  Post.destroy_all
```
```ruby
  exit
```
```ruby
  rails db:migrate
```

## Incluindo Comentários I
```ruby
  rails g model comment post:belongs_to user:belongs_to
```
```ruby
  rails action_text:install
```
```ruby
  rails db:migrate
```


