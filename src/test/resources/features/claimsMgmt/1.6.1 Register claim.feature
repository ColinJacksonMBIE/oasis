Feature: 1.6.1 Register claim
	A Claim states the details of any amounts owed to a Creditor by a bankrupt or company in liquidation
	and can be submitted by internal or external users via a creditors claim form

Scenario: external user registers claim for court awarded costs against estate
	Given a registered user is viewing Insolvency details for "883647" 
	When registering new claim for court awarded adjudication/application costs
	Then claim has been successfully submitted
	
Scenario: external user registers claim for unpaid wages against estate
	Given a registered user is viewing Insolvency details for "883647"
	When registering claim for wages, holiday pay or redundancy
	Then claim has been successfully submitted
	
Scenario: external user registers claim for unpaid taxes against estate
	Given a registered user is viewing Insolvency details for "883647"
	When registering claim for unpaid taxes or levies
	Then claim has been successfully submitted


Scenario: external user registers claim for other outstanding amount against estate
	Given a registered user is viewing Insolvency details for "883647"
	When registering claim for an outstanding amount
	Then claim has been successfully submitted
	And claim is listed against estate with status "Received" 


Scenario: user can withdraw submitted claim
	Given a registered user has submitted claim against estate "880273"
	And is viewing claim details
	When withdrawing claim
	Then claim is successfully withdrawn

Scenario: user can add additional evidence to submitted claim
	Given a registered user has submitted claim against estate "883647"
	And is viewing claim details
	When uploading additional evidence to claim
	Then claim is successfully updated	
	


	
		
