helpers do
  def happy_hour_menu
    @happy_hour_menu ||= data.kaze.menus.detect{|m| m.respond_to?(:happy_hour) }.try(:href)
  end
end

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

configure :build do
  activate :minify_css
  activate :minify_javascript
end

after_build do
  File.rename 'build/redirects', 'build/_redirects'
end

