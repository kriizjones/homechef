Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Then(/^I should see input of type "([^"]*)" with name "([^"]*)"$/) do |type, name|
  expect(page).to have_css('input[type='"#{type}"'][name*='"#{name}"']')
end

Then(/^I should see a placeholder for dishes in general with an id of "([^"]*)"$/) do |id|
expect(page).to have_selector(:css, "div##{id}")
end
