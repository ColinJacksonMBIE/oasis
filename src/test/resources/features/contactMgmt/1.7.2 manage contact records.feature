Feature: 1.7.2 manage contact records
	an internal user can update contact records
	
	## watch the formatting of names / addresses
	
Scenario: add current alternative name to contact record
	Given a internal user is maintaining contact record "1624181"
	When adding current alternative name "John" "SILVER33"
	Then alternative name "SILVER33, John" appears as current alternative name on contact record
	
Scenario: update current alternative name to former alternative name on contact record
	Given a internal user has added an alternative name "Bob" "SAGET" to contact record "1624181"
	When updating alternative name "SAGET, Bob" to former name on contact record
	Then alternative name "SAGET, Bob" appears under former names on contact record
	
Scenario: add current street address to contact record
	Given a internal user is maintaining contact record "1624181"
	When adding street address "65 Eugenia Rise" to contact record 
	Then street address "65 Eugenia Rise" appears under current address on contact record
	
Scenario: update current street address to previous address on contact record
	Given a internal user is maintaining contact record "1624181"
	When updating street address "65 Eugenia Rise" to previous address on contact record 
	Then street address "65 Eugenia Rise" appears under previous address on contact record
	
Scenario: add future residential address to contact record
	Given a internal user is maintaining contact record "1624181"
	When adding future residential address "88 Grange Road" to contact record 
	Then residential address "88 Grange Road" appears under Future Address on contact record
	
Scenario: change preferred payment method to Direct Credit on contact record
	Given a internal user is maintaining contact record "1624181"
	When updating payment details to "Direct Credit"
	Then payment details "Direct Credit" are saved on contact record	
	
Scenario: change preferred payment method to Cheque on contact record
	Given a internal user is maintaining contact record "1624181"
	When updating payment details to "Cheque"
	Then payment details "Cheque" are saved on contact record	
	
#Scenario: set default correspondence address
#	Given a internal user is maintaining contact record "1624356"
#	When setting email address as default correspondence address
#	Then  adding contact as recipent shows default address

