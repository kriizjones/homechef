When(/^I visit the main landing page$/) do
  visit root_path
end

When(/^I click the "([^"]*)" link$/) do |link|
  click_link link
end
