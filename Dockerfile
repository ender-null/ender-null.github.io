FROM jekyll/jekyll

WORKDIR /app

COPY . /app

EXPOSE 4000

CMD ["jekyll", "serve"]
