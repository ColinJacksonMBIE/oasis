Feature: 1.1.3 Search the SIO Register
	any visitor to the website should be able to search the SIO register
	in order to find any debtors with SIO orders

Scenario: a public user can search the SIO register by SIO number
	Given a public user is on the SIO register search page
	When the user searches by SIO number "882698"
	Then search results contain "882698" 
	
Scenario: a registered user can search the SIO register by SIO number
	Given a registered user is on the SIO register search page
	When the user searches by SIO number "882698"
	Then search results contain "882698" 
	
Scenario: a internal user can search the SIO register by SIO number
	Given a internal user is on the SIO register search page
	When the user searches by SIO number "882698"
	Then search results contain "882698" 	

Scenario: a public user can search the SIO register by lastname
	Given a public user is on the SIO register search page
	When the user searches by lastname "CONTACT"
	Then search results contain "CONTACT, Aa Middle" 

Scenario: a registered user can search the SIO register by lastname
	Given a registered user is on the SIO register search page
	When the user searches by lastname "CONTACT"
	Then search results contain "CONTACT, Aa Middle" 

Scenario: a internal user can search the SIO register by lastname
	Given a internal user is on the SIO register search page
	When the user searches by lastname "CONTACT"
	Then search results contain "CONTACT, Aa Middle" 
	
Scenario: A public user can search the SIO register by first and lastname
	Given a public user is on the SIO register search page
	When the user searches by lastname "alias" and firstname "alias"
	Then search results contain "CONTACT, Ae Middle" 

Scenario: A registered user can search the SIO register by first and lastname
	Given a public user is on the SIO register search page
	When the user searches by lastname "alias" and firstname "alias"
	Then search results contain "CONTACT, Ae Middle" 
	
Scenario: A internal user can search the SIO register by first and lastname
	Given a public user is on the SIO register search page
	When the user searches by lastname "alias" and firstname "alias"
	Then search results contain "CONTACT, Ae Middle" 

Scenario: A public user can search the SIO register by orderdate
	Given a public user is on the SIO register search page
	When the user searches by orderDateBetween "01-Jul-2016" and orderDateTo "01-Jul-2017"
	Then search results contain "CONTACT, Aa Middle" 
	
Scenario: A registered user can search the SIO register by orderdate
	Given a public user is on the SIO register search page
	When the user searches by orderDateBetween "01-Jul-2016" and orderDateTo "01-Jul-2017"
	Then search results contain "CONTACT, Aa Middle" 
	
Scenario: A internal user can search the SIO register by orderdate
	Given a public user is on the SIO register search page
	When the user searches by orderDateBetween "01-Jul-2016" and orderDateTo "01-Jul-2017"
	Then search results contain "CONTACT, Aa Middle" 