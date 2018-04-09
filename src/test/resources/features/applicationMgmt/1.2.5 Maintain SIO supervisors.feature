Feature: 1.2.5 Maintain SIO supervisors
	internal users can update SIO supervisor records
	
Scenario Outline: Change Status of SIO supervisor record
	Given a internal user is in SIO supervisor "501" details 
	When updating SIO supervisor record status to "<status>"
	Then status has updated on SIO supervisors list for supervisor "501" 
	
	Examples:
	| status 	|
	| Active	|
	| Suspended	|
	| Inactive	|
	
Scenario: Display SIO supervisor on public list
	Given a internal user is in SIO supervisor "501" details 
	When updating SIO supervisor record to display on public SIO list
	Then SIO supervisor "CONTACT, BD Middle" is displayed on public website

Scenario: remove SIO supervisor from public list
	Given a internal user is in SIO supervisor "501" details 
	When removing SIO supervisor record from public SIO list
	Then SIO supervisor "CONTACT, BD Middle" is not displayed on public website