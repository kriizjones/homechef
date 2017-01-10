Given(/^the following dishes exists$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:dish, hash)
  end
end

When(/^I am on the landing page$/) do
  visit dishes_show_path
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete action
end
