# Módulo 13 - Desenvolvimento APIs

## REST
* Modelo de Arquitetura que utiliza HTTP (Métodos e Status Code)
* Representational State Transfer (Transferência Representacional de Estado)
* Alternativa ao SOAP (XML)

## Criando o projeto API
```ruby
  rails new storebook --api
```

## Instalando a Gem rack-cors
### O gem rack-cors é usado em aplicações Ruby on Rails (ou qualquer app Rack-based) para lidar com CORS (Cross-Origin Resource Sharing), permitindo que sua API seja acessada por outros domínios
```ruby
  gem install rack-cors
```

## Criar o scaffold de book
```ruby
  rails g scaffold book title:string body:text
```
```ruby
  rails db:migrate
```
```ruby
  rails g controller api/v1/books
```
```ruby
  namespace :api do
    namespace :v1 do
      resources :books
    end
  end
```

## Formas de imprimir as rotas
```ruby
  rails routes g books
```
```ruby
  rails routes --expanded | grep books
```
```ruby
  rails routes --expanded --controller=api/v1/books
```

## Rotas criadas
* Geradas com esse comando: rails routes --expanded --controller=api/v1/books
```ruby
--[ Route 1 ]-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Prefix            | api_v1_books
Verb              | GET
URI               | /api/v1/books(.:format)
Controller#Action | api/v1/books#index
Source Location   | /var/www/html/onebitcode-trilha-ruby/modulo-13-desenvolvimento-apis/storebook/config/routes.rb:13
--[ Route 2 ]-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Prefix            |
Verb              | POST
URI               | /api/v1/books(.:format)
Controller#Action | api/v1/books#create
Source Location   | /var/www/html/onebitcode-trilha-ruby/modulo-13-desenvolvimento-apis/storebook/config/routes.rb:13
--[ Route 3 ]-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Prefix            | api_v1_book
Verb              | GET
URI               | /api/v1/books/:id(.:format)
Controller#Action | api/v1/books#show
Source Location   | /var/www/html/onebitcode-trilha-ruby/modulo-13-desenvolvimento-apis/storebook/config/routes.rb:13
--[ Route 4 ]-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Prefix            |
Verb              | PATCH
URI               | /api/v1/books/:id(.:format)
Controller#Action | api/v1/books#update
Source Location   | /var/www/html/onebitcode-trilha-ruby/modulo-13-desenvolvimento-apis/storebook/config/routes.rb:13
--[ Route 5 ]-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Prefix            |
Verb              | PUT
URI               | /api/v1/books/:id(.:format)
Controller#Action | api/v1/books#update
Source Location   | /var/www/html/onebitcode-trilha-ruby/modulo-13-desenvolvimento-apis/storebook/config/routes.rb:13
--[ Route 6 ]-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Prefix            |
Verb              | DELETE
URI               | /api/v1/books/:id(.:format)
Controller#Action | api/v1/books#destroy
Source Location   | /var/www/html/onebitcode-trilha-ruby/modulo-13-desenvolvimento-apis/storebook/config/routes.rb:13
```

## Criar o scaffold de author
```ruby
  rails generate scaffold author name:string
```

## Criando migration para author e book (associação)
```ruby
  rails generate migration AddAuthorToBooks author:references
```
```ruby
  rails db:migrate
```

## Cadastro de usuário
### Pensando nisso, vamos adicionar a gem ‘devise’ no arquivo Gemfile e executar o comando bundle install
```ruby
  rails generate devise:install
```
```ruby
  rails generate devise User
```
```ruby
  rails db:migrate
```

## Utilizando JWT
### Adicionando ao Gemfile
```ruby
  gem 'jwt', '~> 2.10', '>= 2.10.1'
```
```ruby
  bundle install
```
### Crie a pasta services dentro de app e dentro dela crie o arquivo json_web_token_service.rb e adicione o código
```ruby
  # app/services/json_web_token_service.rb
  require 'jwt'

  class JsonWebTokenService
    def self.encode(payload)
      JWT.encode(payload, Rails.application.secrets.secret_key_base)
    end

    def self.decode(token)
      JWT.decode(token, Rails.application.secrets.secret_key_base).first
    rescue JWT::DecodeError
      nil
    end
  end
```
### No arquivo applictation.rb dentro da pasta config, adicione o código:
```ruby
  config.autoload_paths += %W(#{config.root}/app/services)
```
### Na pasta controllers crie o arquivo authentication_controller.rb e adicione o código:
```ruby
  # app/controllers/authentication_controller.rb
  class AuthenticationController < ApplicationController
    def login
      user = User.find_by(email: params[:email])

      if user && user.valid_password?(params[:password])
        token = JsonWebTokenService.encode(user_id: user.id)
        render json: { token: token }, status: :ok
      else
        render json: { error: 'Invalid email or password' }, status: :unauthorized
      end
    end
  end
```
### Rota de login, no arquivo routes.rb
```ruby
  post 'login', to: 'authentication#login'
```

### Para realizar o teste no Postman utilize a URL localhost:3000/login com método POST e envie os dados a seguir no corpo da requisição:
```json
  {
    "email": "admin@example.com",
    "password": "123456"
  }
```

## Documentando a API
### Adicionando ao Gemfile a gem rswag
```ruby
  gem 'rswag', '~> 2.16'
```
```ruby
  bundle install
```
```ruby
  rails generate rswag:install
```
### Crie a pasta swagger > v1 e dentro dela o arquivo swagger.yaml e adicione o código
```yaml
  swagger: '2.0'
  info:
    title: APIRails
    version: '1.0'
  paths:
    /api/v1/authors:
      get:
        summary: Retorna todos os autores
        tags:
          - Authors
        produces:
          - application/json
        responses:
          '200':
            description: Sucesso ao retornar os autores
            schema:
              type: array
              items:
                $ref: '#/definitions/Author'
      post:
        summary: Cria um novo autor
        tags:
          - Authors
        consumes:
          - application/json
        parameters:
          - in: body
            name: author
            description: Objeto do autor a ser criado
            required: true
            schema:
              $ref: '#/definitions/AuthorInput'
        responses:
          '201':
            description: Autor criado com sucesso
            schema:
              $ref: '#/definitions/Author'
          '422':
            description: Falha ao processar a solicitação
            schema:
              $ref: '#/definitions/Error'
  definitions:
    Author:
      type: object
      properties:
        id:
          type: integer
        name:
          type: string
    AuthorInput:
      type: object
      properties:
        name:
          type: string
    Error:
      type: object
      properties:
        error:
          type: string
```
```http
  http://localhost:3000/api-docs
```