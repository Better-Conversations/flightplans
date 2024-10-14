# A basic Gemfile because things expect it

source 'https://rubygems.org'

branch = ENV['GITHUB_HEAD_REF'] || ENV['GITHUB_REF'] || 'main'
gem 'bcf-flightplans', git: 'https://github.com/Better-Conversations/ruby-flightplans.git'#, branch: branch

# gem 'bcf-flightplans', path: '../ruby-flightplans'
gem 'ffi-aspell'
gem 'httparty'

group :development do
  gem 'prism'
  gem 'ruby-lsp'
  gem 'filewatcher'
  gem 'tilt'
  gem 'redcarpet'
  gem 'debug'
  gem 'bundler'
end
