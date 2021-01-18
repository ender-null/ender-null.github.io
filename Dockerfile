FROM jekyll/jekyll

WORKDIR /srv/jekyll

COPY . /srv/jekyll

CMD ["jekyll", "serve"]
