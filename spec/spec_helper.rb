ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../dummy/config/environment", __FILE__)
require 'rspec/rails'
require 'capybara/rspec'
require 'capybara-webkit'

Capybara.javascript_driver = :webkit
ENGINE_RAILS_ROOT = File.join(File.dirname(__FILE__), '../')

RSpec.configure do |config|
  config.mock_with :rspec
  config.use_transactional_fixtures = true
  config.infer_base_class_for_anonymous_controllers = false
  config.include Capybara::DSL, { :file_path => /\bspec\/requests\// }
end
