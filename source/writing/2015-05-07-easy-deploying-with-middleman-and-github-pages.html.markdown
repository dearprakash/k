---
title: Easy Deploying with Middleman and GitHub Pages
date: 2015/05/07
tags: ruby on rails, middleman, github
---

# Easy Deploying with Middleman and GitHub Pages
<time>May 7th, 2015</time>

I wanted easy way to deploy Middleman's static files to GitHub Pages – all while keeping the source available, without having to manage multiple repositories.

Create a `dev` branch in your repository, this is where your `source` files will be housed and will be your working/development branch.

```programming
$ git checkout -b dev
```

Update your `Gemfile` to include:

```ruby
gem 'middleman-deploy', '~> 1.0'
```

Then run `$ bundle install` to see to it that the gem is installed.


Once you've successfully installed the `middleman-deploy` gem, activate deploying in your `config.rb` file:

```ruby
activate :deploy do |deploy|
  deploy.build_before = true # runs build before deploying
  deploy.method = :git
  deploy.branch = 'master'
end
```

Running `$ middleman deploy` will build and push your build to the `master` branch of your repository, where it will then be live for production.