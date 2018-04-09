#Feature: 1.4.9 Manage objections (creditor objection)
#	listed creditors have the opportunity to submit objections to a summary instalment order
#		
#	file online form (https://www.insolvency.govt.nz/owed-money/the-claims-process/if-owed-by-sio-debtor/)
#
##	Scenario: send objection form via email and process (manual)
##	Given a creditor has filed an online objection form 
##	When internal user completes objection process
##	Then SIO estate is rejected