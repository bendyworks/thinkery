Feature: Reader Views Site Index
  As a reader
  In order to know what resources the CMS is managing
  I want to view the list of all resource paths

  Scenario: Reader Views Site Index
    Given "/meetups" resource with title "All the Meetups"
      And "/open_hack_days" resource with title "All the Hacks"
    When I am on the Site Index page
    # Note: this is now fulfilled via the navbar. Awaiting client input
    # about what content is actually desired.
    Then I should see "All the Meetups"
      And I should see "All the Hacks"
