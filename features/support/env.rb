require 'capybara'
require 'capybara/cucumber'
require 'faker'
require 'httparty'
require 'pry'
require 'report_builder'
require 'rspec'
require 'selenium-webdriver'

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 15
Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, browser: :chrome)
end
