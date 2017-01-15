Feature: Sign Up
  As a visitor,
  In order to buy and sell tasty food,
  I need to be able to get system access by creating an account

  Scenario: Successfully Signed Up
    When I am on the "landing" page
    And I click the "Sign up" link
    Then I should be on the signup page
    When I enter my email in the "email" field