Feature: Editor sees edit link on Resource page
  As an editor
  In order to edit content of existing resources
  I want to find an edit link on every editabe resource page

  Scenario: Editor sees edit link on Resource page
    # specify content to prevent false positive on test
    Given "/viewable" resource with content "demonstration"
      # placeholder
      And I am an editor
    When I am on the "/viewable" Resource page
    Then I should see "Edit"
