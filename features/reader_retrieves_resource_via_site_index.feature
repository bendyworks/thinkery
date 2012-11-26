Feature: Reader Retrieves Resource Via Site Index
  As a reader
  In order to view information about a resource
  I want to locate that resource and view its details

  Scenario: Reader Sees Resource Link on Site Index
    Given "/viewable" resource with title "Viewable Title"
      And I am on the Site Index page
    Then I should see "Viewable"

  Scenario: Reader Sees resource Information on Resource Page
    Given "/viewable" resource with content "foombarino" and title "Zombie"
      And I am on the Site Index page
    When I follow "Zombie" link
    Then I should be on the "/viewable" resource show page
      And I should see "viewable"
      And I should see "Zombie"
      And I should see "foombarino"
