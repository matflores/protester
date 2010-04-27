require "test_helper"

require "webrat"
require "rack/test"

Webrat.configure do |config|
  config.mode = :rack
end

class Protest::TestCase
  include Webrat::Methods
  include Webrat::Matchers
end
