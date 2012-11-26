Feature: Reader sees Header content on all pages
  In order to remember which website I am on
  As a reader
  I want to see the Thinkery logo and the slogan "The best thoughts on the web!"

  Scenario: Reader Sees Header content on Site Index page
    When I am on the Site Index page
    Then I should see the page header

  Scenario: Reader Sees Header content on "/meetups" resource page
    Given "/meetups" resource with title "All the Meetups"
    When I am on the Site Index page
    And I follow "All the Meetups" link
    Then I should see the page header
