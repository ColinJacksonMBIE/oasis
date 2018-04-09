Feature: 1.10 create tasks against estate
	an officer working on an estate can create tasks and assign to other teams/members with an action

Scenario: create action referral task
	Given an internal user is viewing estate "B873008"
	When submitting a new task type referal using template "R_ACTION_REF_REQUEST" to officer "Ruth Simpson"
	Then new task successfully created

	
#Scenario: Officer has notified of assigned task
#	Given an internal user ic creating a referal task for estate "B881121"
#	When task has been assigned to officer "Ruth Simpson"
#	Then officer has notified of assigned task

@t
Scenario Outline: create task against estate
	Given an internal user is viewing estate "B873008"
	When adding a new task with category "<categoryType>" using template "<templateName>"
	Then new task successfully created

Examples:
| categoryType | templateName |
| Estate | E_EST_COMP_DATE |
| Estate | ZSOA |
| Personal | O_COMPLETE_TIMESHEET |
| Trust Account | T_LATE_PAYMENT |
| Trust Account | T_REJECT_PAYREQ |
| Trust Account | T_AUTHORISE_ROLLOVER|
| NEU Case | NEU_ADVERTISE |
| NEU Case | NEU_AGENCY_CORRESP |





