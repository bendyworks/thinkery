Feature: Editor creates resource
  As an editor
  In order to create and update resources
  I want to edit the content and save the changes

  Scenario: Editor creates resource
    Given I am on the Site Index page
      And I follow "Add Resource"
    When I fill in "Path" with "/sample"
      And I fill in "Content" with "Grapefruit"
      And I press "Create Resource"
    Then a "/sample" resource should exist with content "Grapefruit"
