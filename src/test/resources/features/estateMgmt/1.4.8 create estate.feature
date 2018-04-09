Feature: 1.4.8 create estate
	An internal user can create an estate
	
		Estate Types		
		Court Liquidation
		Creditor Application
		Criminal Proceeds (Recovery) Act 2009
		Debtor Application
		Insolvent Deceased Estate
		No Asset Procedure
		POC Agency
		Partnership
		Voluntary Liquidation
		Receiver Manager (Bankrupt)
		Summary Instalment Order
		Voluntary Administration <ignore>
		Proceeds of Crime Act 1991 <ignore>
		Bankrupt Agency <ignore>
		Interim Liquidation <ignore>
		Liquidation Agency <ignore>
		
	
Scenario Outline: confirm court and court number are mandatory fields on detailed estate entry form
	Given an internal user is creating a new estate
	And you have selected contact record id "1624176" 
	And selected estate type "<estateType>"
	When saving estate
	Then you receive an error message "court must be specified"
	And you receive an error message "Court Number must be specified"
	
	Examples:
	| estateType |
	|Court Liquidation|
	|Creditor Application|
	|Criminal Proceeds (Recovery) Act 2009|
	|Insolvent Deceased Estate|
	|Interim Liquidation|
	|Receiver Manager (Bankrupt)|
	
Scenario: Create Estate and confirm error when Risk Issues flagged with type not set
	Given an internal user is creating a new estate
	And you have selected contact record id "1624176"	
	And selected estate type "Debtor Application"
	When saving estate with Risk Issues and no Issue type selected
	Then you receive an error message "Issue Type must be specified"


Scenario Outline: create estate
	Given an internal user is creating a new estate
	And you have added a new contact record 
	And selected estate type "<estateType>"
	When completing all fields and saving application
	Then estate has been created
	And is available on the public register
	
	Examples:
	|estateType|
	|Debtor Application|
	|Insolvent Deceased Estate|
	|Creditor Application|

Scenario: confirm new estate suppressed from public view
	Given an internal user has created a suppressed new estate
	When searching for estate on the public register
	Then estate is not visible
@t	
Scenario: create pending estate
	Given an internal user is creating a new estate
	And you have added a new contact record 
	And selected estate type "Debtor Application"
	When completing all fields and saving pending application
	Then estate has been created

Scenario Outline: change pending estate status
	Given an internal user is viewing a pending estate 
	When change estate status to "<status>"
	Then estate details have been saved
	
	Examples:
	|status|
	|Open|
	|Rejected|	