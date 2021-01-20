FROM jekyll/jekyll

WORKDIR /srv/jekyll

COPY ./Gemfile* ./
COPY ./*.md ./
COPY ./*.html ./
COPY ./*.yml ./
COPY ./_posts _posts/
COPY ./_data _data/

RUN chown jekyll:jekyll /srv/jekyll -R

RUN bundle install

ENV JEKYLL_ENV=production

EXPOSE 4000

CMD ["jekyll", "serve"]
