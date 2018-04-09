Feature: 1.3.2 Process new insolvency - Vet 

	internal users can accept or reject insolvency applications
@a
Scenario: Vet application - Accept 
	Given a internal user is viewing a submitted insolvency application 
	When vetting insolvency application (accept) 
	Then estate status is "Accepted" 
	
@a	
Scenario: Vet application - Reject 
	Given a internal user is viewing a submitted insolvency application 
	When vetting insolvency application (reject) 
	Then estate status is "Rejected" 
	
