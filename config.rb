# General Configurations
activate :livereload
activate :directory_indexes

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :relative_links, true
activate :rouge_syntax
set :markdown, :fenced_code_blocks => true, :smartypants => true
set :markdown_engine, :redcarpet

# Blog Configuration
activate :blog do |blog|
  blog.prefix = 'writing'
  blog.permalink = '{title}'
  blog.sources = '{year}-{month}-{day}-{title}.html'
  blog.summary_separator = /READMORE/
  blog.year_link = '{year}.html'
  blog.paginate = true
  blog.per_page = 10
  blog.page_link = '{num}'
end

page "/feed.xml", layout: false

# Build-specific Configuration
configure :build do
  activate :minify_css
end

# Deploy Configuration
activate :deploy do |deploy|
  deploy.build_before = true
  deploy.method = :git
  deploy.branch = 'master'
end