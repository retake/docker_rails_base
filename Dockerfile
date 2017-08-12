from ruby

RUN useradd app -u 1000 -m
USER app

RUN gem install bundler

RUN mkdir -p /home/app/myapp
WORKDIR /home/app/myapp

COPY ./Gemfile Gemfile
COPY ./Gemfile.lock Gemfile.lock
RUN bundle install --path vendor/bundle

