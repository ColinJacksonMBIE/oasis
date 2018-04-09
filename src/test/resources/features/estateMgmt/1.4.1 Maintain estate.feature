Feature: 1.4.1 Maintain estate
	An internal user can update the estate details held against an existing insolvent Estate.
	
	Estate Types
		Bankrupt Agency
		Court Liquidation
		Creditor Application
		Criminal Proceeds (Recovery) Act 2009
		Debtor Application
		Insolvent Deceased Estate
		Interim Liquidation
		Liquidation Agency
		No Asset Procedure
		POC Agency
		Partnership
		Proceeds of Crime Act 1991
		Receiver Manager (Bankrupt)
		Summary Instalment Order
		Voluntary Administration
		Voluntary Liquidation
	
Scenario Outline: maintain estate sub-type
	Given an internal user is viewing estate "B873008" 
	When updating estate sub-type to "<type>"
	Then estate details have saved successfully
	
	Examples:
	| type 		  |
	| Non-Complex |
	| Consumer	  |
	| Complex	  |

	
Scenario Outline: maintain estate high profile
	Given an internal user is viewing estate "B882546"
	When updating estate high profile flag to "<boolean>"
	Then estate details have saved successfully
	And high profile message is visible "<boolean>"
	
	Examples:
	|boolean|
	| false	|
	| true	|
	
	
Scenario Outline: change estate office
	Given an internal user is viewing estate "L860221"
	When updating estate office to "<location>" "<team>" "<officer>"
	Then estate tasks are transferred to "<officer>"
# check this --	And new officer "<officer>" is notified
	
	Examples:
	| location | team		 | officer	    |
	| Auckland |Jenny's Team | Ruth Simpson |
	| Auckland  |Enforcement  | Xj Contact   |

Scenario: reopen closed estate
	Given an internal user is viewing estate "B878131"
	When changing SSP Status to "Open"
	Then an error occurs "Cannot change SSP status from Closed to Open"

Scenario: add travel request to estate as internal user and accept
	Given an internal user is viewing estate "B881449"
	When adding travel request
	And granting consent to travel
	Then travel request updated with status "Consent Granted"

Scenario: reject travel request to estate as internal user and reject
	Given an internal user is viewing estate "B881449"
	When adding travel request
	And denying consent to travel
	Then travel request updated with status "Consent Not Granted"
	
Scenario: add additional information to estate 
	Given an internal user is viewing estate "B883647"
	When updating the more information text field
	Then more information is available on the register to existing creditor "abletasman88"
	And more information is not available to public users


Scenario: update estate finalisation data to discharged
	Given an internal user is viewing estate "B883647"
	When updating estate finalisation data to "Discharged"
	Then discharge date is available to existing creditor "abletasman88"	
	And finalisation data can be removed

# compare functionality isn't working	
#Scenario: view resubmitted application and check submission variances
#	Given an internal user is viewing a resubmitted insolvency application
#	When viewing submission variances
#	Then user can see variations between submission	


Scenario: update details as insolvent
	Given a registered user has a insolvent estate
	When updating details
	Then folio document is created against estate


	
	