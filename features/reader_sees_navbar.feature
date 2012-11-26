Feature: Reader Sees Navbar
  In order to navigate between ideas
  As a reader
  I want to see a horizontal navbar at the top of every page

  Scenario: Reader Sees Navbar on Site Index page
    Given "/meetups" resource with title "All the Meetups"
      And "/open_hack_days" resource with title "All the Hacks"
    When I am on the Site Index page
    Then I should see the navbar

  Scenario: Reader Sees Navbar on "/meetups" resource page
    Given "/meetups" resource with title "All the Meetups"
      And "/open_hack_days" resource with title "All the Hacks"
    When I am on the Site Index page
    And I follow "All the Meetups" link
    Then I should see the navbar
