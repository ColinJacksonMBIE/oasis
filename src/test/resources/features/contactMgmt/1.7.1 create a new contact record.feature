Feature: 1.7.1 create a new contact record
	in order to create estates 
	internal users can create contacts
	
Scenario: create a new organisation contact record
	Given a internal user is creating an organisation contact record
	When completing organisation contact details
	Then contact has been successfully created
		
Scenario: create a new individual contact record
	Given a internal user is creating an individual contact record
	When completing individual contact details
	Then contact has been successfully created
	
#Scenario: generate contact link email
#	Given a internal user has created an individual contact record
#	When dayend job xxx has been run
#	Then user email is generated to link realme to contact record
	
#Scenario: link realme account to individual contact record	
#	Given a internal user is creating an individual contact record
#	And generated contact link email
#	When user follows emailed link
#	Then user account is linked to contact record



