Feature: Registration
				 Register online to create a new account for an application.
				
	
Scenario Outline: a new user creates a new account
	Given a unregistered first time load the page
	When  a new user register an account online using the same email address "<username>" "<password>" "<email>"
	Then  the user can submit the registration form
	And 	receives an account activation email notice. 

	Examples:
	| username | password | email|
#	| Bankruptcy3 | Testing123 | sharlee.athfield2@mbie.govt.nz |
#	| Bankruptcy4 | Testing123 | sharlee.athfield2@mbie.govt.nz |
	| Noasset4 | Testing123 | sharlee.athfield2@mbie.govt.nz |
	| Noasset5 | Testing123 | sharlee.athfield2@mbie.govt.nz |
#	