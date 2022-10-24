FROM ruby:3.1.2

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list


RUN apt-get update -qq && apt-get install -y nodejs yarn
RUN mkdir /kimchi
WORKDIR /kimchi
COPY Gemfile /kimchi/Gemfile
COPY Gemfile.lock /kimchi/Gemfile.lock
RUN bundle install
COPY . /kimchi

# The ruby environment to be loaded
ENV RUBY_ENV=local

EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
