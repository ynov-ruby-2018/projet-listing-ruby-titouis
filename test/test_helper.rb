ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'rack/test'
require 'capybara/rails'
require 'minitest'
require 'minitest/rails'
require 'minitest/spec'
require 'minitest/matchers'
require 'minitest-metadata'
require 'capybara/email'

include ActionDispatch::TestProcess
include Warden::Test::Helpers

Rails.logger.level = 5
Dir[Rails.root.join('test/support/*/.rb')].each { |f| require f }

class ActiveSupport::TestCase
  extend Minitest::Spec::DSL
  include Rack::Test::Methods
  include Devise::Test::IntegrationHelpers
  include Rails.application.routes.url_helpers
  include Capybara::Email::DSL

  def app
    Rails.application
  end

  def json_response
    JSON.parse(last_response.body)
  end

  before do
    @routes = Rails.application.routes
  end

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  self.use_transactional_tests = true

  register_spec_type(self) do |desc|
    desc < ActiveRecord::Base if desc.is_a?(Class)
  end
end
