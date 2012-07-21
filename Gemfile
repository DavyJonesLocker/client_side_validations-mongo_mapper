source 'http://rubygems.org'

gemspec

ruby_minor_version = RUBY_VERSION.split('.')[1].to_i
if RUBY_VERSION >= '1.9.3'
  gem 'debugger'
elsif RUBY_VERSION < '1.9'
  gem 'minitest'
end
