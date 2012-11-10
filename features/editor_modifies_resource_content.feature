Feature: Editor Modifies Resource Content
  As an editor
  In order to update a resource
  I want to edit the resource's content

  Scenario: Editor Modifies Resource Content
    Given "/viewable" resource with title "Viewable" and content "unmodified"
    When I am on the "/viewable" Edit page
      And I am an editor
      And I fill in "Content" with "modified"
      And I press "Update Resource"
    Then a "/viewable" resource should exist with content "modified"
