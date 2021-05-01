Feature: For Rent search
  As a customer
  I want the ability to search for any house of my choice
  So that I can rent the property

  Scenario Outline: Search for any property for rent
    Given I navigate to zoopla homepage
    When I enter a "<Location>" in the search field
    And I select "<MinPrice>" from rental Min price for rent
    And I select "<MaxPrice>" from  rental Max price for rent
    And select "<PropertyType>" from Property type
    And I select "<NoOfBeds>" from Bedrooms
    And I click on search button
    Then the search for "<Location>" is displayed
    And I click on one of the search result

    Examples:
      |Location   | MinPrice  |MaxPrice |PropertyType|NoOfBeds      |
      |Manchester |No min     |No max   |Show all    |No min        |