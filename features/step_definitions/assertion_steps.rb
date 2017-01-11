Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Then(/^I should see input of type "([^"]*)" with name "([^"]*)"$/) do |type, name|
  expect(page).to have_css('input[type='"#{type}"'][name*='"#{name}"']')
end

Then(/^I should see a "([^"]*)" placeholder$/) do |id|
  expect(page).to have_selector(:css, "div##{id}")
end

Then(/^I should see a link called "([^"]*)"$/) do |name|
  expect(page).to have_link name
end

Then(/^I should go to the main landing page$/) do
  %q{ When I visit the main landing page }
end

