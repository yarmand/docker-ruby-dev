FROM ruby:2.2

WORKDIR /usr/src/app

ONBUILD RUN gem install pry
ONBUILD RUN bundle install

if [ -n "BUILD_RELEASE" ] ; then
  ONBUILD COPY . /usr/src/app
fi

CMD [ "bundle exec pry" ]

