Feature: 1.1.4 more info search (website search)
	any visitor should be able to search the insolvency website
	to find information related to insolvency procedures and processes
	In order to go about their business
	
Scenario: As a public user search the insolvency website by keyword
	Given a public user is on the insolvency website quick search
	When the user searches by keyword "sio guidelines"
	Then page "Become a SIO Supervisor" appears in search results
	
Scenario: As a registered user search the insolvency website by keyword
	Given a registered user is on the insolvency website quick search
	When the user searches by keyword "sio guidelines"
	Then page "Become a SIO Supervisor" appears in search results
	
Scenario: As a internal user search the insolvency website by keyword
	Given a internal user is on the insolvency website quick search
	When the user searches by keyword "sio guidelines"
	Then page "Become a SIO Supervisor" appears in search results
	
Scenario: As a public user search the insolvency website by page title
	Given a public user is on the insolvency website quick search
	When the user searches by keyword "about"
	Then page "About" appears in search results
	
Scenario: As a registered user search the insolvency website by page title
	Given a registered user is on the insolvency website quick search
	When the user searches by keyword "about"
	Then page "About" appears in search results
	
Scenario: As a internal user search the insolvency website by page title
	Given a internal user is on the insolvency website quick search
	When the user searches by keyword "about"
	Then page "About" appears in search results
	


