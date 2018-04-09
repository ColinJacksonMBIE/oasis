Feature: 1.1.2 Search the Insolvency Register
	any visitor to the website should be able to search the insolvency register
	in order to find any insolvent estates (i.e bankruptcies, NAPs and liquidations)
	
Scenario: a public user can search the insolvency register by Insolvency Number
	Given a public user is on the insolvency search page
	When the user searches by Insolvency Number "881366"
	Then search results contain "Estate 0101" 
	
Scenario: a registered user can search the insolvency register by Insolvency Number
	Given a registered user is on the insolvency search page
	When the user searches by Insolvency Number "881366"
	Then search results contain "Estate 0101" 
	
Scenario: a internal user can search the insolvency register by Insolvency Number
	Given a internal user is on the insolvency search page
	When the user searches by Insolvency Number "881366"
	Then search results contain "Estate 0101" 
						
Scenario: a public user can search the insolvency register by last name
	Given a public user is on the insolvency search page
	When the user searches by lastname "ducktester"
	Then search results contain "DUCKTESTER, Bob" 
	
Scenario: a registered user can search the insolvency register by last name
	Given a registered user is on the insolvency search page
	When the user searches by lastname "ducktester"
	Then search results contain "DUCKTESTER, Bob" 
	
Scenario: a internal user can search the insolvency register by last name
	Given a internal user is on the insolvency search page
	When the user searches by lastname "ducktester"
	Then search results contain "DUCKTESTER, Bob" 
	
Scenario: a public user can search the insolvency register by first and lastname
	Given a public user is on the insolvency search page
	When the user searches by lastname "ducktester" and firstname "bob"
	Then search results contain "DUCKTESTER, Bob" 
	
Scenario: a registered user can search the insolvency register by first and lastname
	Given a registered user is on the insolvency search page
	When the user searches by lastname "ducktester" and firstname "bob"
	Then search results contain "DUCKTESTER, Bob" 

Scenario: a internal user can search the insolvency register by first and lastname
	Given a internal user is on the insolvency search page
	When the user searches by lastname "ducktester" and firstname "bob"
	Then search results contain "DUCKTESTER, Bob" 
	
Scenario: a public user can search the insolvency register by insolvency status and court
	Given a public user is on the insolvency search page
	When the user searches by insolvencyStatus "Currently Bankrupt/NAP" and court "Christchurch District Court"
	Then search results contain "Estate 0318" 

	
Scenario: a registered user can search the insolvency register by insolvency status and court
	Given a registered user is on the insolvency search page
	When the user searches by insolvencyStatus "Currently Bankrupt/NAP" and court "Christchurch District Court"
	Then search results contain "Estate 0318" 
	
Scenario: a internal user can search the insolvency register by insolvency status and court
	Given a internal user is on the insolvency search page
	When the user searches by insolvencyStatus "Currently Bankrupt/NAP" and court "Christchurch District Court"
	Then search results contain "Estate 0318" 
	
Scenario: a public user can search the insolvency register by adjudication date
	Given a public user is on the insolvency search page
	When the user searches by adjudicationDateBetween "01-Aug-2016" and adjudicationDateTo "01-Aug-2017"
	Then search results contain "DUCKTESTER, Bob" 
	
Scenario: a registered user can search the insolvency register by adjudication date
	Given a registered user is on the insolvency search page
	When the user searches by adjudicationDateBetween "01-Aug-2016" and adjudicationDateTo "01-Aug-2017"
	Then search results contain "DUCKTESTER, Bob" 
	

Scenario: a internal user can search the insolvency register by adjudication date
	Given a internal user is on the insolvency search page
	When the user searches by adjudicationDateBetween "01-Aug-2016" and adjudicationDateTo "01-Aug-2017"
	Then search results contain "DUCKTESTER, Bob" 

Scenario: a public user can search the insolvency register by discharge date
	Given a public user is on the insolvency search page
	When the user searches by dischargeDateBetween "01-Aug-2016" and dischargeDateTo "01-Aug-2017"
	Then search results contain "Estate 0100" 	
	
Scenario: a registered user can search the insolvency register by discharge date
	Given a registered user is on the insolvency search page
	When the user searches by dischargeDateBetween "01-Aug-2016" and dischargeDateTo "01-Aug-2017"
	Then search results contain "Estate 0100" 
	
Scenario: a internal user can search the insolvency register by discharge date
	Given a internal user is on the insolvency search page
	When the user searches by dischargeDateBetween "01-Aug-2016" and dischargeDateTo "01-Aug-2017"
	Then search results contain "Estate 0100" 