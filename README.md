[![Build Status](https://travis-ci.org/tkusuki/rails-kusuki.svg?branch=master)](https://travis-ci.org/tkusuki/rails-kusuki)

# Refeições KUSUKI

Site da Refeições KUSUKI

## Requisitos

* Ruby 2.5+
* Docker 1.12+

## Setup

```
git clone git@github.com:tkusuki/rails-kusuki.git
cd rails-kusuki

docker-compose run web rake db:create db:setup

docker-compose up

```
A aplicação estará disponível em `localhost`

## Rodando os testes

```
docker-compose run --rm web bash

rspec

```
