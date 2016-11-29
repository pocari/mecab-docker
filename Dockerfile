FROM ruby:2.3.2

WORKDIR /var/ruby

RUN apt-get update && apt-get install -y \
            mecab \
            mecab-ipadic-utf8 \
            libmecab-dev \
            locales \
            --no-install-recommends && \
            rm -rf /var/lib/apt/lists/*

RUN gem install \
        pry \
        pry-byebug \
        bundler \
        natto

RUN echo "ja_JP.UTF-8 UTF-8" > /etc/locale.gen \
    && locale-gen \
    && update-locale LANG=ja_JP.UTF-8

ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:en
ENV LC_ALL ja_JP.UTF-8

CMD ["pry"]
