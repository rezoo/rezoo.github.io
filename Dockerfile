FROM ruby:slim

ENV DEBIAN_FRONTEND=noninteractive

LABEL authors="Amir Pourmand,George Araújo" \
      description="Docker image for the rezoo.github.io al-folio site" \
      maintainer="Masaki Saito"

RUN apt-get update --yes \
    && apt-get install --yes --no-install-recommends \
      build-essential \
      git \
      imagemagick \
      inotify-tools \
      locales \
      nodejs \
      procps \
      zlib1g-dev \
    && apt-get clean \
    && apt-get autoremove --yes \
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/* /tmp/*

RUN sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen \
    && locale-gen

ENV EXECJS_RUNTIME=Node \
    JEKYLL_ENV=production \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US:en \
    LC_ALL=en_US.UTF-8

RUN mkdir /srv/jekyll

COPY Gemfile Gemfile.lock /srv/jekyll/

WORKDIR /srv/jekyll

RUN gem install --no-document jekyll bundler \
    && bundle install --no-cache

EXPOSE 8080 35729

COPY bin/entry_point.sh /tmp/entry_point.sh

CMD ["/tmp/entry_point.sh"]
