FROM ruby:3.1 AS builder

WORKDIR /srv/jekyll
COPY Gemfile Gemfile.lock ./
RUN gem install bundler && \
    bundle config set --local path 'vendor/bundle' && \
    bundle install

# Final minimal image
FROM ruby:3.1

WORKDIR /srv/jekyll
# Copy Gemfile, lockfile
COPY Gemfile Gemfile.lock ./
# Copy site source code
COPY src/ ./src

# Install bundler + all gems again at runtime
RUN gem install bundler && \
    bundle config set --local path 'vendor/bundle' && \
    bundle install

EXPOSE 4000

CMD ["bundle", "exec", "jekyll", "serve", "--watch", "--livereload", "--host", "0.0.0.0", "--source", "src"]
