Feature: 1.6.2 Create claim

	A Claim states the details of any amounts owed to a Creditor by a bankrupt or company in liquidation
	and can be submitted by internal or external users via a creditors claim form


Scenario: confirm internal claim cannot be created without selecting creditor
	Given an internal user is on the add new claim form for estate "B883656"
	When saving claim form
	Then an error occurs "Creditor must be specified"
	
Scenario: confirm internal claim cannot be created without selecting Status
	Given an internal user is on the add new claim form for estate "B883656"
	And Status is ""
	When saving claim form
	Then an error occurs "Status must be specified"

Scenario: confirm internal claim cannot be created without selecting Claim Type
	Given an internal user is on the add new claim form for estate "B883656"
	And claimType is ""
	When saving claim form
	Then an error occurs "Claim Type must be specified"
	
Scenario: confirm internal claim value is numeric
	Given an internal user is on the add new claim form for estate "B883656"
	And Notified Value is "three dollars"
	When saving claim form
	Then an error occurs "Entered data must be in n.nn currency format"
	
Scenario: create a new internal claim against estate
	Given an internal user is on the add new claim form for estate "B883656"
	When completing claims form with type "Unsecured creditor with POD"
	Then claim is successfully lodged against estate $estateID
		
#check this scenario		
Scenario: external user can see added claim and supply evidence
	Given an internal user has added a new claim against estate "B883656"
	When user selects claim from list claims page
	Then user is prompted whether money is owed
	And can supply evidence
	
Scenario: confirm history trail is created on new internal claim creation
	Given an internal user has created a new claim against estate "B883656"
	When viewing claim history
	Then Initial Creation is recorded under history 
	

	
		
