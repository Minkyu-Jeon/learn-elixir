FROM elixir:1.10.4-alpine

RUN apk update \
    && apk add --no-cache \
    build-base \
    postgresql-client \
    nodejs \
    yarn \
    inotify-tools

ENV PATH=./node_modules/.bin:$PATH

RUN mkdir /app
COPY . /app
WORKDIR /app

RUN mix local.hex --force

RUN mix do compile

ENTRYPOINT [ "app/entrypoint.sh" ]