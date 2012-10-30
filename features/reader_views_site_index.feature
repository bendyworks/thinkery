Feature: Reader Views Site Index
  As a reader
  In order to know what resources the CMS is managing
  I want to view the index of all resource paths

  Scenario: Reader Views Site Index
    Given "/meetups" resource
      And "/open_hack_days" resource
    When I am on the Site Index page
    Then I should see "/meetups"
      And I should see "/open_hack_days"
