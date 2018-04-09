Feature: 1.2.4 Provide SIO supervisor consent

Scenario: SIO supervisor upload consent for SIO estate online
	Given you are logged on as a SIO supervisor 
	When submitting SIO consent form for application $applicationID
	Then SIO supervisor consent has been given
