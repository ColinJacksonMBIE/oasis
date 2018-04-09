Feature: 1.1.1 search for a contact record
	an internal user can search for contact records
	
Scenario: search for contact record by lastname
	Given a internal user is on the search contacts page
	When the user searches contact by lastname "silver"
	Then contact search results are displayed
	
Scenario: search for contact record by organisation 
	Given a internal user is on the search contacts page
	When the user searches contact by organisation "test organisation"
	Then contact search results are displayed
	
Scenario: search for contact record by contactID
	Given a internal user is on the search contacts page
	When the user searches contact by contactID "1624181"
	Then contact search results are displayed
	
Scenario: search for contact record by streetname
	Given a internal user is on the search contacts page
	When the user searches contact by streetname "135 albert street"
	Then contact search results are displayed


	
	
	