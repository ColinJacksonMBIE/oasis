Feature: 1.3.1 submit statement of affairs online
	public users who have had an estate created are required to provide details online (same as insovlency wizard?)
	
Scenario: submit statement of affairs for estate (more work required here)
	Given a registered user who has an active estate is completing a statement of affairs
	When submitting statement of affairs
	Then document is registered against estate
	And user recieves confirmation email
