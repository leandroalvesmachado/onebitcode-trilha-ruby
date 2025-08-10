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

## RSpec
* Describe - Usado para descrever um grupo de exemplos de teste
* Context - O contexto do caso de teste
* It - Usado para definir um exemplo de teste específico
* Expect - iniciar uma expectativa sobre um determinado objeto ou valor.
* Eq -  usado para verificar se dois valores são iguais

## Utilizando Before Hook
* O before(:each) no RSpec serve para criar ou configurar algo antes de cada exemplo (it) dentro do contexto ou describe.

## Utilizando Matchers
* No RSpec, matchers são as ferramentas que comparam o valor que você está testando com o valor esperado.
* Matchers são usados para comparar o valor testado com o valor esperado.

| Categoria           | Matcher / Sintaxe                                           | Descrição |
|---------------------|-------------------------------------------------------------|-----------|
| **Igualdade**       | `eq(x)` / `eql(x)` / `equal(obj)`                            | `eq` compara com `==`, `eql` compara valor e tipo, `equal` verifica o mesmo objeto na memória |
| **Comparação**      | `be > x`, `be >= x`, `be < x`, `be <= x`, `be_between(a,b)`  | Comparações numéricas |
| **Tipos**           | `be_a(Class)`, `be_an(Class)`, `be_an_instance_of(Class)`    | Verifica classe ou tipo |
| **Truthy / Falsy**  | `be_truthy`, `be_falsey`, `be true`, `be false`              | Verifica se é verdadeiro ou falso |
| **Strings / Regex** | `match(/regex/)`, `start_with(str)`, `end_with(str)`         | Comparação de texto |
| **Coleções**        | `include(x)`, `contain_exactly(...)`                         | Verifica itens presentes |
| **Mudança de valor**| `change { var }.by(n)`, `.from(a).to(b)`                     | Verifica alteração de valores |
| **Erros**           | `raise_error(ClasseErro)`                                    | Espera uma exceção |
| **Compostos**       | `matcher1.and matcher2`, `matcher1.or matcher2`              | Combina matchers |



## Criar banco de dados (blog)
```ruby
  rails db:create
```




