Feature: Check navigation of various tabs
  As a user
  I want to check the navigation to the various tabs
  So that I can successfully move through the website

  Scenario: User can correctly see the Home Page
    Given I am on /
    Then I should see "Welcome"

  @wip
  Scenario: User can see the matrix table page
    Given I am on /
    When I follow "Open Table"
    Then I should see "Pairing Matrix"


  Scenario: User can see the edit records page
    Given I am on /
    When I follow "Edit values"
    Then I should see "Edit Record"


  Scenario: User can edit the pairing matrix
      Given I am on /
      And I follow "Edit values"
      When I fill in "count" with "0"
      And I press "Save"
      Then I should see "Count successfully edited"
