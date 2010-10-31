Feature: search for an issue
  As a comic collector
  In order to find comics to add to my collection
  I need to be able to search for comics

  Scenario: Searching by barcode
    Given I am on the issues page
    And an issue with a series of "Amazing Spider-Man" and a issue num of "129" and a barcode of "123456789" exists
    And an issue with a series of "Avengers Unlimited" and a issue num of "12" and a barcode of "1234567890" exists
    When I fill in "Barcode" with "123456789"
    Then I should see the listing for "Amazing Spider-Man 129"
