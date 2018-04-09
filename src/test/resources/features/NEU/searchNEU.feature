Feature: search and view NEU cases
	
Scenario: internal user searches for NEU case by legislation
	Given a internal user is on the search NEU case page
	When the user searches for cases by legislation "Companies Act 1993"
	Then NEU search results that match criteria "Companies Act 1993" are displayed
	And a case can be opened from search results
	
Scenario: internal user searches for NEU case by Status 
	Given a internal user is on the search NEU case page
	When the user searches for cases by status "Prosecution"
	Then NEU search results that match criteria "Prosecution" are displayed
	And a case can be opened from search results

Scenario: internal user searches for NEU case by Investigating Officer 
	Given a internal user is on the search NEU case page
	When the user searches for cases by investigating officer "KM Contact"
	Then NEU search results that match criteria "Pete Seufatu" are displayed
	And a case can be opened from search results


	

	
	


