FROM ruby:3.2.2-alpine3.17

COPY Gemfile Gemfile.lock /
RUN apk add --no-cache git \
	&& bundle install

ENTRYPOINT ["danger"]
