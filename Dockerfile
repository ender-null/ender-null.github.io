FROM jekyll/jekyll

WORKDIR /srv/jekyll

COPY . /srv/jekyll

RUN gem install no-style-please

RUN bundle install

CMD ["JEKYLL_ENV=production", "bundle", "exec", "jekyll", "serve"]
