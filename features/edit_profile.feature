Feature: As a User
  In order to access and display my user info
  I need to be able to create a profile

  Background:
    Given that there is a user logged in with an email of "email@random.com"

    Scenario: I edit my profile
      When I am on the "Edit profile" page
      Then I fill in "Email" with "email@random.com"
      And I fill in "First name" with "Valentine"
      And I fill in "Last name" with "Karlsson"
      And I fill in "Address" with "Hamngatan 27"
      And I fill in "Zip code" with "311 74"
      And I fill in "City" with "Falkenberg"
      And I fill in "Phone" with "0770223344"
      When I click "Update" button
      Then I should see "Account successfully updated"
      Then "email@random.com" should have name "Valentine"

  Scenario: Updating with an empty email field
    When I am on the "Edit profile" page
    Then I fill in "Email" with ""
    And I fill in "First name" with "Valentine"
    And I fill in "Last name" with "Karlsson"
    And I fill in "Address" with "Hamngatan 27"
    And I fill in "Zip code" with "311 74"
    And I fill in "City" with "Falkenberg"
    And I fill in "Phone" with "0770223344"
    When I click "Update" button
    And I should see "Please add email address"