Given(/^the following dishes exists$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:dish, hash)
  end
end

When(/^I am on the landing page$/) do
  visit dishes_path
end


When(/^I am on the "([^"]*)" page$/) do |page|
  if page == landing
    visit dishes_path
  end
  if page == meatballs
    visit dish_path
  end
end