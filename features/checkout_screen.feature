Feature: As a buying User,
  In order to see and edit the dishes in my order,
  I need to manage my order list

Background:
  Given the following dishes exists
    |    name   |                        description                              |  price  | ready_time | portions |
    | meatballs |    homecooked with love, including mashed potatoes and sauce    |    49   |   18:00    |    10    |
    |   taco    |    really spicy authentic mexican tacos                         |    59   |   16:00    |    10    |

  Given the following dishes are in my order
    |   taco    |    really spicy authentic mexican tacos                         |    59   |   16:00    |    10    |
    |   taco    |    really spicy authentic mexican tacos                         |    59   |   16:00    |    10    |

Scenario: Visitor is on main page and has an order
  When I am on "landing" page
  And I have orders in my basket
  And I click "Checkout" button
  Then I am on "Checkout" page
  And I can see my orders
