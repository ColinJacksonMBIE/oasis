Feature: 1.3.5 apply to travel
	
Scenario: registered user with estate can submit application to travel
	Given a registered user who has an active estate is applying to travel
	When submitting travel application
	Then travel application is successfully submitted
	
Scenario: reject travel application request
	Given a internal user is viewing travel application for estate "1234"
	When rejecting travel application
	Then travel not granted

Scenario: accept travel application request
	Given a internal user is viewing travel application for estate "1234"
	When accepted travel application
	Then travel granted

