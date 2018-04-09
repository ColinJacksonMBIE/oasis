Feature: 1.3.1 Once a user submitted an apply for formal insolvency - Bankruptcy Application. An Inbound Correspondecne will be created,
	status is Awaiting Processing. A internal user acknowledges the correspondence, and status updates to Processed. 
	The internal user can view Assets and Claims have been logged for this Application under Estate Details 
@a
Scenario: acknowledge submitted application
	Given a internal user is viewing inbound correspondence
	And an InboundCrrespondence is AwaitingProcessing for an insolvency application
	When opening and acknowledge the application correspondence
	Then correspondence status updated to processed
@a
Scenario: confirm pending estate created from bankruptcy application
	Given a internal user is viewing inbound correspondence
	When opening estate linked to application
	Then pending estate with assets from application has been created
	And pending estate with claims from application has been created