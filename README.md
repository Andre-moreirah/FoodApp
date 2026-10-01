# FoodApp

O FoodApp é uma plataforma de restaurante e e-commerce desenvolvida com Ruby on Rails, voltada para a venda de produtos do cardápio com experiência de compra completa, gerenciamento de catálogo e painel administrativo.

Este projeto foi construído como uma aplicação de portfólio para demonstrar habilidades em backend, modelagem de dados, autenticação, integração de pagamentos e criação de interfaces administrativas em uma aplicação Rails completa.

## Funcionalidades

- Catálogo de produtos por categoria
- Carrinho de compras funcional
- Fluxo de checkout com integração ao Stripe
- Controle de estoque por tamanho e quantidade
- Painel administrativo para gerenciar categorias, produtos, estoque e pedidos
- Autenticação de administradores com Devise
- Interface responsiva com Tailwind CSS
- Estrutura de banco preparada para desenvolvimento local

## Stack Tecnológica

- Ruby on Rails 8
- Ruby 3.3
- Tailwind CSS
- Stripe Checkout
- Devise
- Active Storage
- Turbo / Stimulus
- SQLite para ambiente local

## Estrutura do Projeto

- app/controllers: controle das páginas do cliente e do painel administrativo
- app/models: modelos principais da aplicação
- app/views: templates da interface web
- app/javascript: interações do front-end
- config/routes.rb: definição das rotas
- db/schema.rb: estrutura do banco de dados
- test: testes automatizados da aplicação

## Como executar o projeto

### Pré-requisitos

- Ruby 3.3+
- Bundler
- Node.js
- Git

### Instalação

1. Clone o repositório:
   ```bash
   git clone <url-do-repositorio>
   cd FoodApp
   ```

2. Instale as dependências:
   ```bash
   bundle install
   ```

3. Configure as variáveis de ambiente localmente. Nunca comite chaves reais.
   Exemplo:
   ```bash
   export STRIPE_SECRET_KEY=sua_chave_secreta
   export WEBHOOK_SECRET_KEY=sua_chave_do_webhook
   ```

4. Crie e migre o banco de dados:
   ```bash
   rails db:create
   rails db:migrate
   rails db:seed
   ```

5. Inicie a aplicação:
   ```bash
   bin/rails server
   ```

6. Acesse no navegador:
   ```text
   http://localhost:3000
   ```

## Área administrativa

O projeto possui um painel administrativo protegido por autenticação do Devise. A área é voltada para o gerenciamento do catálogo, estoque e pedidos do restaurante.

## Integração com Stripe

A aplicação utiliza Stripe Checkout e webhooks para processar pagamentos do fluxo de compra. Para uso local, configure suas chaves de ambiente sem expor valores sensíveis no repositório.

Variáveis esperadas:

- STRIPE_SECRET_KEY
- WEBHOOK_SECRET_KEY

## Testes

Para rodar a suíte de testes:

```bash
bundle exec rails test
```

## Observações para portfólio

Este projeto demonstra:

- arquitetura MVC em Ruby on Rails
- modelagem de dados e relacionamento entre entidades
- desenvolvimento de fluxo de e-commerce real
- integração com serviço de pagamento
- lógica de controle de estoque e pedidos
- criação de painel administrativo completo
- aplicação full stack com foco em experiência de usuário e funcionalidade

## Licença

Projeto desenvolvido com fins educacionais e de portfólio.

## Importante

Este README não contém credenciais reais, chaves secretas ou informações sensíveis de produção.
