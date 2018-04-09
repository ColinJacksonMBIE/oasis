Feature: 1.4.7 Manage timesheet against estate

Scenario: add new timesheet entry from estate
	Given an internal user is viewing estate "B873008"
	When submitting a time entry for field work
	Then time is allocated against estate


#Scenario: add new timesheet entry from timesheets
#	Given a internal user is adding a new timesheet record
#	When selecting activity against estate "B881121"
#	And submitting time entry
#	Then time is allocated against estate