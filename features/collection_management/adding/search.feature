Feature: search for an issue
  As a comic collector
  In order to find comics to add to my collection
  I need to be able to search for comics

  Scenario: Searching by barcode
    Given I am on the issues page
    And an issue exists with barcode: "123456789", description: "reprint edition"
    And an issue exists with barcode: "1234567890", description: "prestige edition"
    When I fill in "Barcode" with "123456789"
    And I press "Search"
    Then I should see "reprint edition"
    And I should not see "prestige edition"
