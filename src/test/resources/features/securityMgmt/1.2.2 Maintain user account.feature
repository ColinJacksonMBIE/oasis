Feature: 1.2.2 Maintain user account

Scenario: a registered user can update their account details
	Given a registered user is updating logon details
	When changing secret answer on logon details form
	Then account details are updated

Scenario: a registered user can update their account details
	Given a registered user is updating logon details
	When changing lastname on logon details form
	Then account details are updated
