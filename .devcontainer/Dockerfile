FROM ruby:3.1
RUN apt-get update \
  && apt-get install -y vim \
  && rm -rf /var/lib/apt/lists/*

COPY load-profile.sh /etc/profile.d/

ARG USERNAME=developer
ARG USER_UID=1000
ARG USER_GID=$USER_UID
ARG USER_GID=$USER_UID

RUN groupadd --gid $USER_GID $USERNAME \
  && useradd -s /bin/bash --uid $USER_UID --gid $USER_GID -m $USERNAME