Feature: Editor Sees Error Messages
  As an editor
  In order to enter correct resources
  I want to create bad resource entries and observe the failure messages

  Scenario: Editor creates new resource with duplicate path
    Given "/duplicate_path" resource with title "Duplicate Path"
    When I am on the Site Index page
      And I press "Add Idea"
      And I fill in "Path" with "/duplicate_path"
      And I fill in "Title" with "Duplicate Path returns"
      And I press "Create Resource"
    Then I should see "Path has already been taken"
      And "Path" should still contain "/duplicate_path"
