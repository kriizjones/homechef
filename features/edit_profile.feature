Feature: As a User
  In order to access and display my user info
  I need to be able to create a profile

  Background:
    Given that there is a user logged in with an email of "email@random.com"

    Scenario: I edit my profile
      When I am on the "Edit profile" page
      Then I fill in "email@random.com" in the "Email" field
      And I fill in "Valentine" in the "First name" field
      And I fill in "Karlsson" in the "Last name" field
      And I fill in "hamngatan 27" in the "Address" field
      And I fill in "311 74" in the "Zip code" field
      And I fill in "Falkenberg" in the "City" field
      And I fill in "0770223344" in the "Phone" field
      When I click "Update" button
      Then "email@random.com" should have name "Valentine"

      