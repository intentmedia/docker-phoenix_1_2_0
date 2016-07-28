FROM elixir:1.3.2

RUN apt-get update \
		&& apt-get upgrade -y \
		&& apt-get install -y curl wget

ENV PHOENIX_VERSION 1.2.0

RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new-$PHOENIX_VERSION.ez

RUN apt-get install -y nodejs npm git
