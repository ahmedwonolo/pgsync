FROM ruby:3.1.2-alpine3.15

MAINTAINER Andrew Kane <andrew@ankane.org>

RUN apk add --no-cache build-base libpq-dev postgresql-client && \
    gem install pgsync && \
    apk del build-base

ENTRYPOINT ["pgsync"]
