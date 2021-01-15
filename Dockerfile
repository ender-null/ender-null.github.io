FROM jekyll/jekyll

WORKDIR /srv/jekyll

COPY . /srv/jekyll

EXPOSE 4000 4000

CMD ["jekyll", "serve"]
