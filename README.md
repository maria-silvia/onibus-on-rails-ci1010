# onibus-on-rails-ci1010

T5 de Programação Web =)

Este trabalho tem como tema o transporte público de Curitiba.
Permite ver e, ao administrador, criar, editar e deletar:

- Linhas de ônibus
- Tipos de ônibus
- Terminais
- Endereço de terminais

##### dependências

- ruby 3.0.0p0
- Rails 7.0.3.1

### Relações do banco de dados

**1:1** Terminal e Endereco

> Cada Terminal tem um endereço único dele.

**1:N** Linha e Tipo

> Um tipo tem várias linhas.
> Uma linha tem um tipo.

**N:N** Linhas e Terminais

> Uma linha passa em um ou mais terminais.
> Um terminal tem uma ou mais linhas passando nele.

<!-- - Configuration -->

<!-- - Database creation -->

<!-- - Database initialization -->

<!-- - How to run the test suite -->

<!-- - Services (job queues, cache servers, search engines, etc.) -->

<!-- - Deployment instructions -->
