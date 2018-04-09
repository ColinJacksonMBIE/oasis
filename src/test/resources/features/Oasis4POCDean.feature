Feature: POC test feature for new oasis
@test
  Scenario: testing POC
    Given I am on the your claims form
    When I select search for claim "Debtor name"
    Then nothing happens