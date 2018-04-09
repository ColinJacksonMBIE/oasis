Feature: 1.3.1 Apply for formal insolvency - Bankruptcy Application
	a registered user should be able to complete the application for formal insolvency
	this application is in multiple parts and can be saved and returned to at a later date
	
Scenario: complete the personal details section (part A - I) of the Bankruptcy insolvency wizard
	Given a registered user has started the "Bankruptcy" insolvency wizard
	When completing page I in the personal details section of the insolvency wizard
	Then the user is returned to the progress summary page 1 with the personal details section completed

Scenario: complete the personal details section (part A - II) of the Bankruptcy insolvency wizard
	Given a registered user has started the "Bankruptcy" insolvency wizard
	When completing page II in the personal details section of the insolvency wizard
	Then the user is returned to the progress summary page 2 with the personal details section completed

Scenario: complete the personal details section (part A - III) of the Bankruptcy insolvency wizard
	Given a registered user has started the "Bankruptcy" insolvency wizard
	When completing page III in the personal details section of the insolvency wizard
	Then the user is returned to the progress summary page 3 with the personal details section completed
	
Scenario: complete the personal details section (part A - IV) of the Bankruptcy insolvency wizard
	Given a registered user has started the "Bankruptcy" insolvency wizard
	When completing page IV in the personal details section of the insolvency wizard
	Then the user is returned to the progress summary page 4 with the personal details section completed
	
Scenario: complete the assets section (part B - I) of the Bankruptcy insolvency wizard
	Given a registered user has started the "Bankruptcy" insolvency wizard
	When completing page I in the asset details section of the insolvency wizard
	Then the user is returned to the progress summary page 1 with the your assets section completed
	
Scenario: complete the assets section (part B - II) of the Bankruptcy insolvency wizard
	Given a registered user has started the "Bankruptcy" insolvency wizard
	When completing page II in the asset details section of the insolvency wizard
	Then the user is returned to the progress summary page 2 with the your assets section completed
	
Scenario: complete the assets section (part B - III) of the Bankruptcy insolvency wizard
	Given a registered user has started the "Bankruptcy" insolvency wizard
	When completing page III in the asset details section of the insolvency wizard
	Then the user is returned to the progress summary page 3 with the your assets section completed
	
Scenario: complete the assets section (part B - IV) of the Bankruptcy insolvency wizard
	Given a registered user has started the "Bankruptcy" insolvency wizard
	When completing page IV in the asset details section of the insolvency wizard
	Then the user is returned to the progress summary page 4 with the your assets section completed

Scenario: complete the debts section (part C - I) of the Bankruptcy insolvency wizard
	Given a registered user has started the "Bankruptcy" insolvency wizard
	When completing page I in the your debts section of the insolvency wizard
	Then the user is returned to the progress summary page 1 with the your debts section completed
	
Scenario: complete the debts section (part C - II) of the Bankruptcy insolvency wizard
	Given a registered user has started the "Bankruptcy" insolvency wizard
	When completing page II in the your debts section of the insolvency wizard
	Then the user is returned to the progress summary page 2 with the your debts section completed
	
Scenario: complete the sole trader section (part D - I) of the Bankruptcy insolvency wizard
	Given a registered user has started the "Bankruptcy" insolvency wizard
	When completing page I in the sole trader section of the insolvency wizard
	Then the user is returned to the progress summary page 1 with the sole trader section completed
	
Scenario: complete the sole trader section (part D - II) of the Bankruptcy insolvency wizard
	Given a registered user has started the "Bankruptcy" insolvency wizard
	When completing page II in the sole trader section of the insolvency wizard
	Then the user is returned to the progress summary page 2 with the sole trader section completed
	
Scenario: complete the sole trader section (part D III) of the Bankruptcy insolvency wizard
	Given a registered user has started the "Bankruptcy" insolvency wizard
	When completing page III in the sole trader section of the insolvency wizard
	Then the user is returned to the progress summary page 3 with the sole trader section completed
	
Scenario: complete the trusts section (part E) of the Bankruptcy insolvency wizard
	Given a registered user has started the "Bankruptcy" insolvency wizard
	When completing all pages in the trusts section of the insolvency wizard
	Then the user is returned to the progress summary page with the trusts section completed
	
Scenario: complete the additional information section (part F - I) of the Bankruptcy insolvency wizard
	Given a registered user has started the "Bankruptcy" insolvency wizard
	When completing page I in the additional information section of the insolvency wizard
	Then the user is returned to the progress summary page 1 with the additional information section completed
	
	Scenario: complete the additional information section (part F - II) of the Bankruptcy insolvency wizard
	Given a registered user has started the "Bankruptcy" insolvency wizard
	When completing page II in the additional information section of the insolvency wizard
	Then the user is returned to the progress summary page 2 with the additional information section completed
	
	Scenario: complete the additional information section (part F - III) of the Bankruptcy insolvency wizard
	Given a registered user has started the "Bankruptcy" insolvency wizard
	When completing page III in the additional information section of the insolvency wizard
	Then the user is returned to the progress summary page 3 with the additional information section completed
	
Scenario: submit Bankruptcy application
	Given a registered user has started the "Bankruptcy" insolvency wizard
	And 	a registered user has completed all parts of the insolvency application wizard
	When  submitting the application
  Then  user clicks finish and logged out the wizard
		
Scenario: user check submition status	
	Given a user has submitted the "Bankruptcy" form successfully
	When  the user log on to check submition status
	Then  the user can see application status
	
