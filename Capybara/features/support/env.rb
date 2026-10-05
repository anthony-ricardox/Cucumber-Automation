require 'capybara/cucumber'
require 'rspec'
require 'selenium-webdriver'

World(Capybara::DSL)
World(RSpec::Matchers)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.javascript_driver = :selenium_chrome
  config.default_max_wait_time = 5
  config.app_host = 'https://www.origamid.com/'
end