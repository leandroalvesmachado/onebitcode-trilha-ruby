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

## Incluindo Comentários I e II
```ruby
  rails g model comment post:belongs_to user:belongs_to
```
```ruby
  rails action_text:install
```
```ruby
  rails db:migrate
```
## Formulário de Pesquisa

````markdown
# Ransack

[Ransack](https://github.com/activerecord-hackery/ransack) é uma gem do Ruby on Rails usada para criar **buscas avançadas** em modelos ActiveRecord de forma simples e poderosa, ideal para implementar **filtros de pesquisa** em formulários HTML.

---

## ✨ Funcionalidades principais

- Criação de **consultas complexas** via parâmetros de URL (`params`).
- Suporte a diversos **operadores de busca** (`eq`, `cont`, `gteq`, etc.).
- Capacidade de pesquisar em **associações** (`joins`).
- Integração com **formularios Rails (`form_for` / `form_with`)**.

---

## 🧠 Exemplo básico de uso

### Controller

```ruby
def index
  @q = Produto.ransack(params[:q])
  @produtos = @q.result
end
````

### View (ERB)

```erb
<%= search_form_for @q do |f| %>
  <%= f.label :nome_cont, 'Nome contém:' %>
  <%= f.search_field :nome_cont %>

  <%= f.submit 'Buscar' %>
<% end %>
```

Esse exemplo permite pesquisar produtos cujo nome contenha o termo digitado.

---

## ⚙️ Operadores comuns

| Operador  | Descrição                     |
| --------- | ----------------------------- |
| `_eq`     | Igual                         |
| `_not_eq` | Diferente                     |
| `_cont`   | Contém (semelhante ao `LIKE`) |
| `_start`  | Começa com                    |
| `_end`    | Termina com                   |
| `_gt`     | Maior que                     |
| `_lt`     | Menor que                     |
| `_gteq`   | Maior ou igual                |
| `_lteq`   | Menor ou igual                |
| `_in`     | Dentro de uma lista           |

---

## 🔍 Exemplos de buscas

* `?q[nome_cont]=mesa` → busca onde o nome contém "mesa"
* `?q[preco_gteq]=100` → produtos com preço maior ou igual a 100
* `?q[categoria_nome_eq]=eletrônicos` → busca por associação (`joins` com `categoria.nome`)

---

## ✅ Vantagens

* **Fácil integração** com interfaces de usuário.
* Reduz necessidade de escrever SQL ou lógica de filtro manualmente.
* Suporta **relacionamentos e joins** nativamente.
* Muito usada e bem mantida pela comunidade Rails.

---




