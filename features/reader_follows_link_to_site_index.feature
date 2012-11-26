Feature: Reader Follows Link To Resource Index
  As a reader
  In order to conveniently return to the Resource Index from other pages
  I want to be able to find, on any other page, a link to the Resource Index

  Scenario: Reader Follows Link to Resources Index
    Given "/random/example" resource with title "Just Some random Example"
    When I am on the "/random/example" Resource page
      And I follow "home_link"
    Then I should be on the "Resource Index" page
