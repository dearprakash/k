---
title: "Easy Deploying with Middleman and GitHub Pages"
description: "An easy tutorial on deploying with Middleman and GitHub Pages."
date: 05/07/2015
tags: 
  - ruby on rails
  - middleman
  - github
---

I wanted easy way to deploy Middleman's static files to GitHub Pages – all while keeping the source available, without having to manage multiple repositories.

Create a `dev` branch in your repository, this is where your `source` files will be housed and will serve as your working/development branch.

```programming
$ git checkout -b dev
```

Update your `Gemfile` to include:

```ruby
gem 'middleman-deploy', '2.0.0.pre.alpha'
```

Then run `$ bundle install` to see to it that the gem is installed.


Once you've successfully installed the `middleman-deploy` gem, activate deploying in your `config.rb` file:

```ruby
activate :deploy do |deploy|
  deploy.build_before = true # runs build before deploying
  deploy.deploy_method = :git
  deploy.branch = 'master'
end
```

Running `$ middleman deploy` will build and push to the `master` branch of your repository, where it will then be live in production.

**Updated** on March 18th, 2016 to reflect latest `middleman-deploy` version in parity with Middleman v4, plus updated syntax.