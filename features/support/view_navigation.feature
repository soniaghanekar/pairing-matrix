Feature: Check navigation of various tabs
  As a user
  I want to check the navigation to the various tabs
  So that I can successfully move through the website

  Scenario: User can correctly see the Home Page
    Given I am on /
    Then I should see "Welcome"

    @wip
  Scenario: User can view the pairing matrix
    Given I am on /
    When I follow "open table"
    Then I should see "Pairing Matrix"
