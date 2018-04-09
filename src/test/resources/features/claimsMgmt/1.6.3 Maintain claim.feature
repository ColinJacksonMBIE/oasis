Feature: 1.6.3 Maintain claim
	
Scenario: change claim status to vetted
	Given an internal user is viewing externally submitted claim for estate "B883647"	
	When changing claim status to "Vetted"
	And you have entered admitted value
	Then claim details are saved successfully
	
Scenario Outline: change claim type
	Given an internal user is viewing externally submitted claim for estate "B883647"
	When changing claim type to "<type>"
	Then claim priority has updated to "<priority>"
	
	Examples:
	|type|priority|
	|Bankrupt|9999|
	|Deferred debt creditor|650|
	|Security Interest|20|

Scenario: link evidence to claim
	Given an internal user is viewing externally submitted claim for estate "B883647"
	When adding existing folio item to claim
	Then folio appears under other links on claim

Scenario: Insolvency Manager changes claim status to admitted.
	Given an insolvencyManager is viewing claim with status "Vetted"
	When changing claim status to "Admitted"
	Then claim details are saved successfully

Scenario: link asset to claim
	Given an internal user has added a new Bank Account asset to estate "B883647"
	When linking claim to asset
	Then claim is linked to asset