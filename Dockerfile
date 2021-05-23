FROM jekyll/jekyll

LABEL org.opencontainers.image.source https://github.com/ender-null/ender-null.github.io

WORKDIR /srv/jekyll

COPY ./Gemfile* ./
COPY ./*.md ./
COPY ./*.html ./
COPY ./*.yml ./
COPY ./_posts _posts/
COPY ./_data _data/
COPY ./assets assets/

RUN chown jekyll:jekyll /srv/jekyll -R

RUN bundle install

ENV JEKYLL_ENV=production

EXPOSE 4000

CMD ["jekyll", "serve"]
