Feature:
  As a buying User,
  In order to secure the pickup of my order
  I need to see a summary with location of pickup and pickup time after my payment has been confirmed

Background:
  Given the following dishes exists
    | name      | description                                               | price | ready_time | portions |
    | meatballs | homecooked with love, including mashed potatoes and sauce |  10   | 18:00      | 10       |
    | taco      | really spicy authentic mexican tacos                      |  10   | 16:00      | 10       |

  Scenario: User purchases a dish and is being shown pick_up time and order summary at a confirmation page


  Scenario: User purchases two dishes with different pick_up time and is being shown pick_up time for both dishes
