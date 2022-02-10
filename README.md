# README

A skeletal docker container with Ruby 3.1, Rail 7 and Sqlite3

## How to copy this repository (if you're not going to fork it)
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
