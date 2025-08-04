# Módulo 12 - Testes com RSpec

## Tipos de Teste
* Unidade (Teste unitário): é um tipo de teste que verifica se uma unidade específica de código (geralmente uma função, método ou classe) está funcionando corretamente de forma isolada
* Integração: Tipo de teste que verifica se múltiplas partes do sistema funcionam corretamente juntas. Verifica se diferentes módulos ou serviços usados pelo software funcionam bem juntos
* Funcional: Um teste funcional (ou functional test) verifica se uma funcionalidade específica do sistema está funcionando corretamente do ponto de vista do usuário, sem se preocupar com a implementação interna.
* Aceitação: Um teste de aceitação (ou acceptance test) é um tipo de teste automatizado (ou manual) que verifica se o sistema atende aos requisitos do negócio e do usuário final. Ele valida o comportamento do sistema como um todo, do ponto de vista do usuário. Testar o sistema inteiro

## TDD (Test Driven Development) - Desenvolvimento Orientado por Testes
* Ciclo do TDD: Red → Green → Refactor
  * 🟥 Red: Escreva um teste que falha (porque o código ainda não existe).
  * 🟩 Green: Escreva o mínimo de código necessário para o teste passar.
  * 🛠 Refactor: Melhore o código mantendo os testes passando.
* Vantagens:
  * Código mais confiável e menos propenso a bugs.
  * Melhor design do código (você pensa antes de implementar).
  * Confiança para refatorar sem medo.
  * Serve como documentação viva do sistema.

## RSpec
* Site: https://rspec.info/

## Criar banco de dados (blog)
```ruby
  rails db:create
```




