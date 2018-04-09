Feature: test feature for new oasis

  Scenario: testing
    Given I am on the your claims form
    When I select claim status "Withdrawn"
    And I select the search button
    Then nothing happens