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
OBS: Para rodar a aplicação localmente, é preciso ter instalado na máquina o MongoDB Community Version.  

Primeiramente, tornar os scripts `.sh` executáveis:
`chmod u+x *.sh`

Então instalar dependências, caso seja a primeira vez rodando ou tenha alterações no seu Gemfile:
`bundle install`

Logo, iniciar o daemon do MongoDB em um terminal separado:
`./mongo-local.sh`

Após execução do daemon do banco de dados, iniciar o servidor do rails: 
`./rails-server-local.sh`

### Através de containers Docker

Para construir o container:
`docker compose build`

Para rodar o container:
`docker compose up`