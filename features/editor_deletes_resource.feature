Feature: Editor Deletes Resource
  As an editor
  In order to manage the collection of resources
  I want to delete any resource I choose

  Scenario: Editor Deletes Resource
    Given "/sacrifice" resource
    When I am on the "/sacrifice" Edit page
      And I press "Delete"
    Then the "/sacrifice" resource should not exist
      And I should be on the "Site Index" page
      And I should not see "/sacrifice"

