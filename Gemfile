source 'http://rubygems.org' # https was preventing bundle from finishing
ruby ENV['JF_RUBY_VERSION'] || '2.2.1'

gem 'rails', '4.2.1'
gem 'pg'

# For front-end development
gem 'sass-rails'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'

gem 'slim'
gem 'inline_svg'
gem "autoprefixer-rails"

# For friendlier URLs
gem 'friendly_id'

# For user authentication
gem 'devise'

# For commenting
gem 'closure_tree'
gem 'acts_as_votable'
gem 'redcarpet'

# For mailing
gem 'postmark-rails'

# For image-uploads
gem 'paperclip'
gem 'aws-sdk', '< 2.0'

group :development, :test do
  gem 'web-console', '~> 2.0'
  gem 'spring'

  # Windows does not include zoneinfo files, so bundle the tzinfo-data gem
  gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

  # for testing
  gem 'rspec-rails'
end

group :test do
  gem 'capybara'
end

group :production do
  gem 'rails_12factor'
end
