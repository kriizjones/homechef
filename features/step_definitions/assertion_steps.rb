Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Then(/^I should see input of type text$/) do
  expect(page).to have_css('input[type="text"][name*="enter_location"]')
end
