Feature: Main landing page
  As a visitor
  In order to get an overview over the service
  I need to see a main landing page

  Scenario: Visitor visits main page
    When I visit the main landing page
    Then I should see "Welcome to HomeChef"
    And I should see input of type "text" with name "enter_location"
    And I should see a placeholder for dishes in general with an id of "random_dishes"
    And I should see a "logotype" placeholder
    And I should see a link called "Home"
    When I click the "Home" link
    Then I should go to the main landing page