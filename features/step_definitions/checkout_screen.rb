Given(/^the following dishes are in my order$/) do |table|
  table.hashes.each do |name|
    scope = Dish.find_by(name: name)

    within "#dish-#{scope.id}" do
      click_link_or_button button
    end
  end
end

When(/^I click "([^"]*)" button$/) do |button|
  click_link_or_button button
end

Then(/^I can see my orders$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
