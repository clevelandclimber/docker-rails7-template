# README

A skeletal development docker container with Ruby 3.1, Rail 7. This container is a monolith. Use the 'sqlite3' branch for Sqlite3; use the 'postgresql' branch for PostgreSQL.
> This work is based on Avdi Grimm's work at [Graceful Dev](https://graceful.dev).

# How to copy this repository (if you're not going to fork it)
> These instructions are based on this no-longer available article by bitdrift: http://bitdrift.com/post/4534738938/fork-your-own-project-on-github

In this example we'll use `NEW_BAR` as the repo name. The GitHub URL to the repo is `NEW_BAR_URL`.

You'll also need the `OLD_FOO_URL` that you're copying from. In this case that's https://github.com/clevelandclimber/docker-rails7-template.git

1. create the empty repository `NEW_BAR` on GitHub

2. on your local machine, clone the old repository
    ```
    git clone OLD_FOO_URL NEW_BAR
    ```
3. cd into your local repo
    ```
    cd NEW_BAR
    ```
4. update the `.git/config` file changing the remote url to `NEW_BAR_URL`
    ```
    [remote "origin"]
      url = NEW_BAR_URL
      fetch = +refs/heads/*:refs/remotes/origin/*
    ```
5. Optionally add your original repo as an upstream source:
    ```
    git remote add upstream OLD_FOO_URL
    ```
6. Push your updated repository up to GitHub:
    ```
    git push -u origin master
    ```
# Things you might want to do

## Create an `.env` file

You should create an `.env` file but don't check it into git. At the very least include these docker vars and change the `COMPOSE_PROJECT_NAME` to something unique for your project:
  ```
  export COMPOSE_FILE=.devcontainer/docker-compose.yml
  export COMPOSE_PROJECT_NAME=dockertemplate
  ```

## How to Use

  Start the container:
  ```
  docker compose up -d
  ```

  Get a bash shell in the container:
  ```
  script/dev-shell
  ```

  Change your profile by editing `.devcontainer/profile.sh`

## To change the database to PostgreSQL

In the container, run the following then rebundle.

  ```
  rails db:system:change --to=postgresql
  ```
