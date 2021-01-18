FROM jekyll/jekyll

WORKDIR /srv/jekyll

COPY . /srv/jekyll

RUN gem install no-style-please

RUN bundle install

CMD ["jekyll", "serve"]
