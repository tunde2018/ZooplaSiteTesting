Feature: For Sale search
  As a customer
  I want the ability to search for any house of my choice
  So that I can buy the property

  Scenario Outline: Customer can search for any property
    Given I navigate to zoopla homepage
    When I enter a "<Location>" in the search text box
    And I select "<MinPrice>" from rental Min price dropdown
    And I select "<MaxPrice>" from  rental Max price dropdown
    And select "<PropertyType>" from Property type dropdown
    And I select "<NoOfBeds>" from Bedrooms dropdown
    And I click on search button
    Then the search for "<Location>" is displayed
    And I click on one of the search result

    Examples:
      |Location   | MinPrice  |MaxPrice |PropertyType|NoOfBeds      |
      |Manchester |No min     |No max   |Show all    |No min        |
      |Manchester |£250,000   |No max   | Show all   | No min       |
     |Manchester  |No min     |£230,000 | Show all   |No min        |
     |Manchester|   £250,000  | £400,000 | Houses    | No min       |
      |Manchester|   £250,000  | £400,000 | Flats    | No min       |
      |Manchester|   £250,000  | £400,000 | Show all | 3+           |
      |M9 4FU|   £250,000      | £400,000 | Show all      | 3+              |
     |Manchester Victoria Station| £250,000  | £400,000 | Show all | 3+       |


  Scenario Outline: Error page is displayed for property
    Given I navigate to zoopla homepage
    When I enter a "<Location>" in the search text box
    And I select "<MinPrice>" from rental Min price dropdown
    And I select "<MaxPrice>" from  rental Max price dropdown
    And select "<PropertyType>" from Property type dropdown
    And I select "<NoOfBeds>" from Bedrooms dropdown
    And I click on search button
    Then an error page is displayed

    Examples:
      |Location   | MinPrice  |MaxPrice |PropertyType|NoOfBeds      |
      |Manchester |No min     |No max   |Show all    |No min        |