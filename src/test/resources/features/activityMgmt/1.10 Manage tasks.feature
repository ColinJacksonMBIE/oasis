Feature: 1.10 Manage tasks

Scenario Outline: complete task from task details
	Given an internal user is viwing the task master 
	When completing task with category "<categoryType>"
	Then task status is updated to "Closed"
Examples:
| categoryType |
| Estate | 
| Personal |
| Trust Account|
| NEU Case |
	

Scenario Outline: put task on hold
	Given an internal user is viwing the task master 
	When putting task on hold with category "<categoryType>"
	Then task status is updated to "On Hold"
Examples:
| categoryType |
| Estate | 


Scenario: divert all tasks to another officer [confirm steps]
	Given an internal user is viwing the task master 
	When diverting a task to officer "Xj Contact"
	Then the task is assigned to new officer