FROM jekyll/jekyll

WORKDIR /srv/jekyll

COPY ./Gemfile* /srv/jekyll/
COPY ./*.md /srv/jekyll/
COPY ./*.html /srv/jekyll/
COPY ./*.yml /srv/jekyll/
COPY ./_posts /srv/jekyll/_posts
COPY ./_data /srv/jekyll/_data

RUN chown jekyll:jekyll /srv/jekyll -R

RUN bundle install

RUN gem install no-style-please

ENV JEKYLL_ENV=production

EXPOSE 4000

#CMD ["bundle", "exec", "jekyll", "serve"]
CMD ["jekyll", "serve"]
