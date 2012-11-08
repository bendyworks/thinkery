Feature: Editor Sees Error Messages
  As an editor
  In order to enter correct resources
  I want to create bad resource entries and observe the failure messages

  Scenario: Editor creates new resource with duplicate path
    Given "/duplicate_path" resource
    When I am on the Site Index page
      And I follow "Add Resource"
      And I fill in "Path" with "/duplicate_path"
      And I press "Create Resource"
    Then I should see "Path has already been taken"
      And "Path" should still contain "/duplicate_path"
