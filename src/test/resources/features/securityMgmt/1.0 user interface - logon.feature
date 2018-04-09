Feature: 1.0 user interface - logon

Scenario: internal user logon
	Given you are on the logon page
	When entering username "FLOODK" and password "Secure1"
	Then you are successfully logged on
	And you are on the search estate page

Scenario: registered user logon
	Given you are on the logon page
	When entering username "strachy88" and password "Secure1"
	Then you are successfully logged on
	And you are on the do it online page
		
#Scenario: open bankruptcy form
#	Given you are logged on as a registered user
#	When hovering over the Do It Online menu and clicking bankruptcy link
#	Then the bankruptcy link has been clicked