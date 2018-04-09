Feature: 1.8 Manage Online files (document repository)


Scenario: add freeform document to online file
	Given an internal user is viewing estate "B873008"
	When adding new folio item freeform document in estate online file
	Then document is saved to folio

Scenario Outline: add templated document to online file
	Given an internal user is viewing estate "B873008"
	When adding new folio item template "<templatename>" document in estate online file
	Then document is saved to folio
	
	Examples:
	| templatename |
	| File Note |
	| DC Advice |
	
#Scenario: add document to online file via email
#	Given you are composing a new email to <emailAddress>
#	And you have attached document 'test.pdf'
#	When sending email with subject "$estateID: uploaded document description"
#	Then online folio contains new document "uploaded document description"

Scenario: add new publication record
	Given an internal user is viewing estate "B873008"
	And has opened publication record in estate online file
	When adding new record for user "able tasman"


