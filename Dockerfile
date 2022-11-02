FROM ruby:3-slim

RUN gem install danger
RUN apt update && apt install git -y && rm -rf /var/lib/apt/lists/*

COPY . .

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["bash", "/entrypoint.sh"]
