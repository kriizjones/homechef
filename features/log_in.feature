Feature: Login to buy and sell an dish
  As an owner
  I need to log in
  So I can sell or buy dishes


  Scenario: Visitor logs in so them can create a dish to sell or they can buy a dish
    When I am on the "landing" page
    And I click "Log in"
    Then I fill in "Email" with "kristoffer.user@homechef.com"
    And I fill in "Password" with "password"
    Then I click "Log in" button
    And I should be on the "/users/page" page
    And I should see "Welcome to your page"

