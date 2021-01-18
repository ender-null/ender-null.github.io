FROM jekyll/jekyll

USER jekyll

WORKDIR /srv/jekyll

COPY . /srv/jekyll

RUN bundle install

CMD ["jekyll", "serve"]
