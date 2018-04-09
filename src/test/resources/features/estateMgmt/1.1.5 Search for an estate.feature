Feature: 1.1.5 Search for an estate
	An internal user should be able to search for an estate
	In order to manage the estate
	
Scenario: Search for an estate by estate number
	Given an internal user is on the search estate page
	When the user searches by estateNumber "B873008"
	Then estate "B873008" details page is displayed	
	
Scenario: Search for an estate by organisation name
	Given an internal user is on the search estate page
	When the user searches by organisationName "Test Organisation"
	Then estate search results showing "Test Organisation" are displayed
	
Scenario: Search for an estate by office
	Given an internal user is on the search estate page
	When the user searches by office "Auckland"
	Then estate search results showing "Auckland" are displayed

Scenario Outline: Search for an estate by estate type
	Given an internal user is on the search estate page
	When the user searches by estateType "<estateType>"
	Then estate search results showing "<estateType>" are displayed
	
	Examples:
	|estateType|
	|Bankrupt Agency|
	|Court Liquidation|
	|Creditor Application|
	|Criminal Proceeds (Recovery) Act 2009|
	|Debtor Application|

Scenario: Search for an estate by SSP status
	Given an internal user is on the search estate page
	When the user searches by SSPStatus "Open"
	Then estate search results showing "Open" are displayed
	
Scenario: Search for an estate by first and last name
	Given an internal user is on the search estate page
	When the user searches estate by lastname "DUCKTESTER" and firstname "Bob"
	Then estate "B883647" details page is displayed	
	
Scenario: Search for an estate by creation date
	Given an internal user is on the search estate page
	When the user searches by creationDateFrom "15-Jul-2016" and creationDateTo "15-Aug-2016"
	Then estate search results showing "Estate 0633" are displayed
	
Scenario: Search for an estate by adjudication date
	Given an internal user is on the search estate page
	When the user searches by adjudicationDateFrom "15-Jul-2016" and adjudicationDateTo "15-Aug-2016"
	Then estate search results showing "Estate 0100" are displayed

Scenario: Show total results display
	Given an internal user is on the search estate page
	And the user has selected to display Total Number of Search Results
	When the user searches by creationDateFrom "15-Jul-2016" and creationDateTo "15-Aug-2016"
	Then estate search result total is displayed
	
	
	