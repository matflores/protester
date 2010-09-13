# encoding: utf-8

require "test_helper"

require "rack/test"
require "capybara"
require "capybara/dsl"
require "protest/stories"

Capybara.default_driver = :rack_test
Capybara.app = Main

class Protest::TestCase
  include Capybara

  def assert_contain(text)
    assert page.has_content?(text)
  end

  def status
    Capybara.current_session.driver.rack_server.response.status
  end

  def url(path)
    Capybara.current_session.driver.rack_server.url path
  end
end
