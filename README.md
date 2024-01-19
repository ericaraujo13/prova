## Como rodar um projeto Rails

Descrição: Este arquivo README fornece instruções sobre como rodar um projeto Rails e subir o servidor local com bin/dev.

Requisitos:

    Ruby 3.2.2
    Rails 7.1.2

# Instalação local:

Criando base de dados:

rode o comando 

rails db:prepare

# Instalação Docker:
rode o comando 
docker compose up --build -d

Agora vamos configurar o elasticsearch

entre no console 

execute o comando:
rails c no terminal

depois digite:

Municipe.reindex

pronto!


# Subindo o servidor local:

Para subir o servidor local, você pode usar o comando bin/dev:

bin/dev

Este comando iniciará o servidor Rails na porta 3000. Você pode acessar o projeto em http://localhost:3000.

Desligando o servidor local:

Para desligar o servidor local, você pode usar o comando Ctrl+C.

# Rodando os testes

Para rodar os testes execute o seguinte comando:

bundle exec rspec 
