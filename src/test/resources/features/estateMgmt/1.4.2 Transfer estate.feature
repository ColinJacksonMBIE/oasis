Feature: 1.4.2 Transfer estate

Scenario: reject transfer of estate
	Given estate "B883658" has been transfered to office "Auckland" officer "Ruth Simpson"
	When rejecting estate "B883658" transfer task
	Then estate "B883658" is still assigned to current user "System Admin1"

Scenario Outline: approve transfer of estate
	Given estate "B883658" has been transfered to office "Auckland" officer "<officer>"
	When accepting estate "B883658" transfer task for officer "<officer>"
	Then estate "B883658" has been re-assigned to user "<officer>"
	And estate "B883658" tasks have been reassigned to user "<officer>"
	
	Examples:
	|officer|
	|Ruth Simpson|
	|System Admin1|