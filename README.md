# onibus-on-rails-ci1010

T5 de Programação Web

Este trabalho tem como tema o transporte público de Curitiba.
Permite ver e, ao administrador, criar, editar e deletar:

- Linhas de ônibus
- Tipos de ônibus
- Terminais
- Endereço de terminais

##### dependências

- ruby 3.0.0p0
- Rails 7.0.3.1

<!-- - Configuration -->

- Database creation and initialization
  `rails db:setup`

- How to run the test suite
  `rake test`

### Relações do banco de dados

**1:1** Terminal e Endereco

> Cada Terminal tem um endereço único dele.

**1:N** Linha e Tipo

> Um tipo tem várias linhas.
> Uma linha tem um tipo.

**N:N** Linhas e Terminais

> Uma linha passa em um ou mais terminais.
> Um terminal tem uma ou mais linhas passando nele.

### Desenvolvimento

```ruby
rails g scaffold Tipo nome:string cor:string
rails g scaffold Linha nome:string codigo:integer tipo:belongs_to
```

- Adicionar `has_many :linhas, :dependent => :destroy` em model do Tipo
- Adicionar `form.collection_radio_buttons` no \_form de Linha

```
rails g scaffold Endereco rua:string numero:integer
rails g scaffold Terminal nome:string endereco:belongs_to
```

- Adicionar `has_one :terminal` em endereco.rb
- Adicionar `belongs_to :endereco, :dependent => :destroy` em terminal.rb

```
rails g migration create_linhas_terminals linha_id:integer terminal_id:integer
```
