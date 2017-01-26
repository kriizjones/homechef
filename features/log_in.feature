Feature: Login to buy and sell an dish
  As an owner
  I need to log in
  So I can sell or buy dishes

  Background:
    Given that there is a user with email: "kristoffer.user@homechef.com"


  Scenario: A user logs in
    When I am on the "landing" page
    And I click "Login"
    Then I fill in "Email" with "kristoffer.user@homechef.com"
    And I fill in "Password" with "password"
    And I click "Log in" button
    Then I should be on the "Landing" page
    And I should see "Signed in successfully."

