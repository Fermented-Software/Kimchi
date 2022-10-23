# README
[![Maintainability](https://api.codeclimate.com/v1/badges/ce8783c839063c27b944/maintainability)](https://codeclimate.com/github/Fermented-Software/Kimchi/maintainability)
[![Coverage Status](https://coveralls.io/repos/github/Fermented-Software/Kimchi/badge.svg?branch=main)](https://coveralls.io/github/Fermented-Software/Kimchi?branch=main)
![GA Release Workflow main](https://github.com/Fermented-Software/Kimchi/actions/workflows/ci-release.yaml/badge.svg?branch=main)
![GA Pull Request Workflow main](https://github.com/Fermented-Software/Kimchi/actions/workflows/build-and-test.yaml/badge.svg?branch=main)

## A aplicação
A aplicação será uma ferramenta de UI para serviços de mensageria, em um primeiro momento para o [Amazon Kinesis](https://aws.amazon.com/pt/kinesis/).
Com o sucesso da implementação base para o Kinesis, queremos expandir essas features para outros serviços como o Kafka e RabbitMQ.

Para acessar acesse [Kimchi](https://kimchi-app.herokuapp.com) (Hospedagem via Heroku)

## Gestão
Utilizaremos o Pivotal Tracker, que é uma ferramenta de gestão de projetos Agile. Ele pode ser acessado [aqui](https://www.pivotaltracker.com/n/projects/2603031)

## Integrantes

- Egydio Pacheco

- Emanuel Tavares

- Hyun Min Cho

- Leonardo Meireles

- Lucas Vilela

- Raul Mello

## Como rodar a aplicação

### Localmente sem containers:
Primeiramente, tornar os scripts `.sh` executáveis:
`chmod u+x *.sh`

Então, iniciar o daemon do MongoDB:
`./mongo-local.sh`

Após execução, iniciar o servidor do rails em outro terminal: 
`./rails-server-local.sh`

### Através de containers Docker

Para construir o container:
`docker compose build`

Para rodar o container:
`docker compose up`

## Links úteis:
[Documentação da API do Rails](https://api.rubyonrails.org/v6.0.6/)  
[Documentação da API do Capybara](https://rubydocs.org/d/capybara-3-19-0/)  
[Documentação da API do Rspec](https://rspec.info/documentation/)  
[Documentação da API do AWS-SDK](https://docs.aws.amazon.com/sdk-for-ruby/v3/api/)  