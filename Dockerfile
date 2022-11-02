FROM ruby:3-slim

RUN gem install danger
RUN apt update && \
	apt install git -y &&\
	apt upgrade -y &&\
	rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["danger"]
