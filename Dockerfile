ARG RUBY_VERSION=3.2.1
FROM ruby:$RUBY_VERSION-slim

# Install essentials for running gems and app
RUN apt-get update -qq && apt-get install -yq --no-install-recommends \
    build-essential \
    postgresql-client \
    gnupg2 \
    less \
    git \
    git-core \
    curl \ 
    libssl-dev \
    libreadline-dev \
    libyaml-dev \
    libsqlite3-dev \
    libpq-dev \
    libcurl4-openssl-dev \
    postgresql-client \
    libffi-dev \ 
    libvips \
    imagemagick \ 
    dirmngr \
    tzdata \
    vim-tiny \
    && apt-get clean autoclean \
    && apt-get autoremove -y \
    && rm -rf \
    /var/lib/apt \
    /var/lib/dpkg \
    /var/lib/cache \
    /var/lib/log \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Update Gems and install Bundler
RUN gem update --system
RUN gem install bundler

# Add Bundle to $PATH
ENV BUNDLE_PATH /gems
ENV LANG=C.UTF-8 \
    BUNDLE_JOBS=4 \
    BUNDLE_RETRY=3

# Setup workdir and copy code from local machine to container working directory
WORKDIR /app
COPY . /app/

# Copy Gemfile to container
COPY Gemfile Gemfile.lock /app/

ENTRYPOINT ["./bin/docker-entrypoint.sh"]

CMD ["bundle", "exec", "rails", "s", "-b", "0.0.0.0", "-p", "3000"]

# Expose port to defined
EXPOSE 3000
