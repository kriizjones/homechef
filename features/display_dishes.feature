Feature: As a visitor,
  In order to see example of dishes available in general,
  I need to be able to see a selection of dishes

Background:
  Given the following dishes exists
    |    name   |                        description                              |  price  | readytime | portions |
    | meatballs |    homecooked with love, including mashed potatoes and sauce    |    49   |   18:00   |    10    |
    |   taco    |    really spicy authentic Mexican tacos                         |    59   |   16:00   |    10    |

Scenario: Visitor is on main page and sees dishes
  When I am on the landing page
  Then I should see "Meatballs"
  And I should see "Homecooked with love, including mashed potatoes and sauce"
  And I should see "Price: 49kr"
  And I should see "Ready for pick-up at 18:00"
  And I should see "10 portions left"
