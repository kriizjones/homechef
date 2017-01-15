Feature: Sign Up
  As a visitor,
  In order to buy and sell tasty food,
  I need to be able to get system access by creating an account

  Scenario: Successfully Signed Up
    When I am on the "landing" page
    And I click the "Sign up" link
    Then I should be on the signup page
    When I enter my email in the "Email" field
    And I enter my password in the "Password" field
    And I enter my password in the "Password confirmation" field
    And I click the "Sign up" button
    Then I should be on the main landing page
    And I should see "User created successfully"
#    And a user with "email" and "password" should be added