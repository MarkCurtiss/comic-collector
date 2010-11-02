Feature: search for an issue
  As a comic collector
  In order to find comics to add to my collection
  I need to be able to search for comics

  Scenario: Searching by barcode
    Given I am on the issues page
    And the following issues exist
      | series_name | issue_num | barcode    |
      | X-Men       | 3         | 123456789  |
      | X-Statix    | 4         | 1234567890 |
    When I fill in "Barcode" with "123456789"
    And I press "Search"
    Then I should see "X-Men #3"
    And I should not see "X-Statix #4"

  Scenario: Searching by series and issue number
    Given I am on the issues page
    And the following issues exist
      | series_name   | issue_num |
      | X-Men         | 3         |
      | X-Men         | 4         |
      | X-Factor      | 34        |
    When I fill in "Series" with "X-Men"
    And I fill in "Issue Number" with "4"
    And I press "Search"
    Then I should see "X-Men #4"
