activate :livereload

page "press/feed.xml", layout: false

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :docs_dir, 'docs'

configure :build do
  activate :minify_css
  activate :minify_javascript
  #activate :relative_assets
end

# rename file after build
after_build do
  File.rename 'build/redirects', 'build/_redirects'
end
