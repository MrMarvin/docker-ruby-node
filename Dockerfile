FROM ruby:2.3
MAINTAINER Marvin Frick <marvin.frick@sinnerschrader.com>
ENV REFRESHED_AT 2017-04-10

RUN apt update -qq && apt install -y build-essential
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -; \
apt install -y nodejs

WORKDIR /app
ONBUILD ADD . /app

CMD ["bash"]
