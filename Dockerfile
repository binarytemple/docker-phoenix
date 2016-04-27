FROM elixir

ENV PHOENIX_VERSION 1.1.4

RUN mix local.hex --force && mix local.rebar --force && mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new-${PHOENIX_VERSION}.ez --force && mix hex.info

RUN apt-get update -y && apt-get install curl -y

RUN curl -sL https://deb.nodesource.com/setup_5.x | bash -

RUN apt-get install -y nodejs && npm install npm -g

CMD ["/bin/bash"]
