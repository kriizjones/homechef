When(/^I click "([^"]*)"$/) do |button|
  click_link_or_button button
end

Then(/^I fill in "([^"]*)" with "([^"]*)"$/) do |email, password|
  FactoryGirl.create(:user, email: email)
  user = User.find_by(email: email)
  login_as(user, scope: :user)
  fill_in "Password", with: password

end