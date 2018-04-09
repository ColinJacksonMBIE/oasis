Feature: 1.5.1 Bank Account asset
	an internal user should be able to create, update and dispose of a asset

	asset types
	Bank Account 
	Boat 
	Book Debt 
	Business 
	Cash 
	Chattels 
	Company Shares 
	Contribution 
	Fishing Quota 
	Insolvent Transaction 
	Insurance Policy 
	Intellectual Property 
	Interest in Deceased Estate 
	Interest in Partnership 
	Interest in Trust 
	Lease 
	Legal Action 
	Livestock 
	Motor Vehicle 
	Other 
	Plant &amp; Equipment 
	Proceeds Order 
	Property 
	Stock 
	Superannuation 
	Tax Refund 
	Valuables 
	
Scenario: confirm bank account section appears when creating Bank Account Asset
	Given an internal user is adding a new asset to estate "B873008"
	When selecting asset type "Bank Account" on the create asset form
	Then the Bank Account section is available in asset details

Scenario Outline: confirm mandatory fields are required when creating Bank Account Asset
	Given an internal user is adding a new asset to estate "B873008"
	When selecting asset type "Bank Account" and saving
	Then an error occurs "<errorMessage>"
	
	Examples:
	|errorMessage |
	|Description must be specified|
	|Comment must be specified|
	|Security must be specified|
	|Notified Value must be specified|
	|Estimated Value must be specified|
	|Realisable must be specified|
	|Location must be specified|
	|Location Details must be specified|

Scenario: A new asset is created - Bank Account
	Given an internal user is adding a new bank account asset to estate "B873008"
	When completing asset details form for asset type bank account
	Then asset is successfully created
	And assetID is unique
	And assetID is listed against estate "B873008"

Scenario: confirm tasks created against new asset - Bank Account
	Given an internal user has added a new Bank Account asset to estate "B873008"
	When viewing estate "B873008" task master
	Then task "Letter to bank" has been created
	
Scenario: add an asset contact 
	Given an internal user is viewing new Bank Account asset
	When adding new asset contact by contactID "1624174"
	Then contact "Able Tasman1" is recorded against asset	
	
	
Scenario: add a time entry against asset
	Given an internal user is viewing new Bank Account asset
	When adding a new time entry activity against asset
	Then asset time entry is recorded against estate "B873008"
	
Scenario: create disposal record for asset
	Given an internal user is viewing new Bank Account asset
	When adding a active disposal record with type "Cash"
	Then disposal record is saved
	
Scenario: enter notification source against asset
	Given an internal user is viewing new Bank Account asset
	When selecting notification source "File Note"
	And linking document from online folio
	Then notification source and document are saved against Asset
		
Scenario: update asset disposal status
	Given an internal user is viewing new Bank Account asset
	When updating disposal status to "In Progress"
	Then asset is saved successfully

	

	

	
	
	
