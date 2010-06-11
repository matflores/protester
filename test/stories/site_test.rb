# encoding: utf-8

require "stories_helper"

Protest.story "As a developer I want to see the homepage so I know Monk is correctly installed" do
  scenario "A visitor goes to the homepage" do
    visit "/"

    assert_contain "Hello, world!"
  end
end
