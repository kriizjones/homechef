Feature: As a buying User,
  In order to see and edit the dishes in my order,
  I need to manage my order list

Background:
  Given the following dishes exists
    |    name   |                        description                              |  price  | ready_time | portions |
    | meatballs |    homecooked with love, including mashed potatoes and sauce    |    49   |   18:00    |    10    |
    |   taco    |    really spicy authentic mexican tacos                         |    59   |   16:00    |    10    |

Scenario: Visitor is on main page and has an order
  When I am on the "landing" page
  And I click the "Add dish" button for "taco"
  And I click the "Add dish" button for "meatballs"
  And there should be "2" items on the last order
  And I click "Checkout" button
  Then I am on the "Checkout" page
  Then I should see "Taco"
  And I should see "Really spicy authentic mexican tacos"
  And I should see "Price: 59kr"
  And I should see "Ready for pick-up at 16:00"
  And I should see "10 portions left"
  Then I should see "Meatballs"
  And I should see "Homecooked with love, including mashed potatoes and sauce"
  And I should see "Price: 49kr"
  And I should see "Ready for pick-up at 18:00"
  And I should see "10 portions left"
  And I should see the stripe button
