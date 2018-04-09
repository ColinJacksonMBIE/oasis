Feature: 1.5.1 Motor vehicle asset
	an internal user should be able to create, update and dispose of a asset


Scenario: A new asset is created - Motor Vehicle Account
	Given an internal user is adding a new motor vehicle asset to estate "B873008"
	When completing asset details form for asset type motor vehicle
	Then asset is successfully created
	And assetID is unique
	And assetID is listed against estate "B873008"

Scenario: confirm tasks created against new asset - Motor Vehicle
	Given an internal user has added a new motor vehicle asset to estate "B873008"
	When viewing estate "B873008" task master
	Then task "Dispose of Boat Asset" has been created
	
Scenario: add an asset contact 
	Given an internal user is viewing new motor vehicle asset
	When adding new asset contact by contactID "1624174"
	Then contact "Able Tasman1" is recorded against asset	
	
Scenario: create disposal record for asset
	Given an internal user is viewing new motor vehicle asset
	When adding a active disposal record with type "Cash"
	Then disposal record is saved
	
Scenario: enter notification source against asset
	Given an internal user is viewing new motor vehicle asset
	When selecting notification source "File Note"
	And linking document from online folio
	Then notification source and document are saved against Asset
		
Scenario: update asset disposal status
	Given an internal user is viewing new motor vehicle asset
	When updating disposal status to "In Progress"
	Then asset is saved successfully

	

	

	
	
	
