FROM jekyll/jekyll

WORKDIR /srv/jekyll

COPY . /srv/jekyll

RUN gem install no-style-please

CMD ["jekyll", "serve"]
