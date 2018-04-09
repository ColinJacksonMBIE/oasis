Feature: 1.3.1 Apply for formal insolvency - Summary Instalment Orders
	a registered user should be able to complete the application for formal insolvency
	this application is in multiple parts and can be saved and returned to at a later date

	Scenario: complete part A of the SIO insolvency wizard
	Given a registered user has started the "Summary Instalment Orders" insolvency wizard 
	When completing all pages in "SIO" personal details section of the insolvency wizard (short path)
	Then the user is returned to the progress summary page 4 with the personal details section completed
	
Scenario: complete part B of the SIO insolvency wizard
	Given a registered user has started the "Summary Instalment Orders" insolvency wizard
	When completing all pages in the asset details section of the insolvency wizard (short path)
	Then the user is returned to the progress summary page 4 with the your assets section completed
		
Scenario: complete part C of the SIO insolvency wizard
	Given a registered user has started the "Summary Instalment Orders" insolvency wizard
	When completing all pages in the your debts section of the insolvency wizard (short path)
	Then the user is returned to the progress summary page 2 with the your debts section completed
	
Scenario: complete part D of the SIO insolvency wizard
	Given a registered user has started the "Summary Instalment Orders" insolvency wizard
	When completing all pages in the sole trader section of the insolvency wizard (short path)
	Then the user is returned to the progress summary page 1 with the sole trader section completed
	
Scenario: complete part E of the SIO insolvency wizard
	Given a registered user has started the "Summary Instalment Orders" insolvency wizard
	When completing all pages in the trusts section of the insolvency wizard (short path)
	Then the user is returned to the progress summary page with the trusts section completed
	
Scenario: complete part F of the SIO insolvency wizard
	Given a registered user has started the "Summary Instalment Orders" insolvency wizard
	When completing all pages in the additional information section of the insolvency wizard (short path)
	Then the user is returned to the progress summary page 3 with the additional information section completed


Scenario: submit NAP application
	Given a registered user has started the "Summary Instalment Orders" insolvency wizard
	And 	a registered user has completed all parts of the insolvency application wizard
	When  submitting the application (short path)
	Then  user clicks finish and logged out the wizard

Scenario: user check submition status	
	Given a user has submitted the "Summary Instalment Orders" form successfully
	When  the user log on to check submition status
	Then  the user can see application status
	