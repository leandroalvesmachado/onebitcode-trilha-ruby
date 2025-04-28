# Módulo 08 - Aprofundando o controller

* https://guides.rubyonrails.org/action_controller_overview.html

## Criando projeto 
* rails new controller --skip-active-record --skip-test --skip-bundle

## Explicando cada configuração
* --skip-active-record = Essa opção pula a instalação do Active Record, que é a biblioteca padrão do Rails para ORM (Object-Relational Mapping), usada para interagir com o banco de dados. os arquivos de configuração relacionados a banco de dados (como database.yml) não serão gerados.
* --skip-test = Essa opção pula a geração da estrutura de testes padrão do Rails (baseada em Minitest).
* --skip-bundle = Essa opção evita que o comando bundle install seja executado automaticamente após criar a aplicação.

Útil quando:
Você quer revisar o Gemfile antes de instalar as dependências.
Ou está sem internet no momento da criação do projeto.
Ou vai configurar algo manualmente antes de instalar as gems.

## Criando o controller 
* rails generate controller Simple --skip-template-engine --no-helper
* rails generate controller User --skip-template-engine --no-helper

## Explicando cada configuração
* --skip-template-engine = Essa flag impede a criação de arquivos de views (como .html.erb, .html.haml, etc). Útil quando: Você está construindo uma API (não precisa de views).
* --no-helper = Essa flag impede a criação do arquivo de helper associado ao controller.

## Rotas com Resource
* resources :posts

## Rotas RESTful geradas por `resources :posts`

| Verbo HTTP | Caminho             | Controller#Ação     | Descrição                     |
|------------|---------------------|---------------------|-------------------------------|
| GET        | `/posts`            | `posts#index`       | Listar todos os posts         |
| GET        | `/posts/new`        | `posts#new`         | Formulário para novo post     |
| POST       | `/posts`            | `posts#create`      | Criar um novo post            |
| GET        | `/posts/:id`        | `posts#show`        | Exibir um post específico     |
| GET        | `/posts/:id/edit`   | `posts#edit`        | Formulário para editar o post |
| PATCH/PUT  | `/posts/:id`        | `posts#update`      | Atualizar o post              |
| DELETE     | `/posts/:id`        | `posts#destroy`     | Excluir o post                |

* protect_from_forgery with: :null_session = é usada no controller Rails para configurar o comportamento do CSRF (Cross-Site Request Forgery) em requisições não autenticadas com cookie, como geralmente acontece em APIs.

## Rotas Aninhados

```ruby
resources :posts do
  member do
    get 'comments', to: 'posts#comments'
    get 'new_comment', to: 'posts#new_comment'
    post 'create_comment', to: 'posts#create_comment'
  end
end
```

| Verbo HTTP | Caminho                     | Controller#Ação         | Descrição                                  |
|------------|-----------------------------|-------------------------|--------------------------------------------|
| GET        | `/posts`                    | `posts#index`           | Listar todos os posts                      |
| GET        | `/posts/new`                | `posts#new`             | Formulário para novo post                  |
| POST       | `/posts`                    | `posts#create`          | Criar um novo post                         |
| GET        | `/posts/:id`                | `posts#show`            | Exibir um post específico                  |
| GET        | `/posts/:id/edit`           | `posts#edit`            | Formulário para editar o post              |
| PATCH/PUT  | `/posts/:id`                | `posts#update`          | Atualizar o post                           |
| DELETE     | `/posts/:id`                | `posts#destroy`         | Excluir o post                             |
| GET        | `/posts/:id/comments`       | `posts#comments`        | Listar os comentários de um post           |
| GET        | `/posts/:id/new_comment`    | `posts#new_comment`     | Formulário para novo comentário no post    |
| POST       | `/posts/:id/create_comment` | `posts#create_comment`  | Criar um novo comentário no post           |

## Filtros