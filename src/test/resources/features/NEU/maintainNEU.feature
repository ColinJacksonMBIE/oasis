Feature: maintain NEU cases

Scenario: internal user can view NEU case online files
	Given a internal user is viewing NEU case "1003"
	When viewing online file
	Then documents in online file can be viewed	

Scenario: create task in NEU case
	Given a internal user is viewing NEU case "1003"
	When creating a new task with template "NEU_ALLOCATE" assigned to officer "Ruth Simpson"
	Then task has been created successfully

	
Scenario: add time entry to NEU case
	Given a internal user is viewing NEU case "1003"
	When adding a new time entry
	Then time recorded in timesheet against NEU case "1003"

	

	
	


