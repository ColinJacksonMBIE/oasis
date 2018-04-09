Feature: 1.4.6 officers can link/refer estates

Scenario: link estate
	Given a internal user is adding a estate link
	When linking "B879952" to "B880011"
	Then "B879952" details related items shows linked estate "B880011"
	
Scenario: remove estate link
	Given a internal user is removing a estate link
	When removing estate link between "B879952" to "B880011"
	Then estate "B879952" details related items link to estate "B880011" is removed
@t	
Scenario: create estate referal task
	Given a internal user is viewing estate "B880011"
	When referring estate to "legal"
	Then referral task is created
	And referral task can be completed