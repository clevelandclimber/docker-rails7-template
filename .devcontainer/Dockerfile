FROM ruby:3.1
RUN apt-get update \
  && apt-get install -y vim \
  && rm -rf /var/lib/apt/lists/*

COPY load-profile.sh /etc/profile.d/