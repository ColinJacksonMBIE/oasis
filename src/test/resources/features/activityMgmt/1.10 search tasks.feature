Feature: 1.10 search tasks

Scenario: search tasks
	Given an internal user is viwing the task master 
	When searching for all open tasks assigned to officer "Xj Contact"
	Then open tasks are displayed

Scenario Outline: search tasks
    Given an internal user is viwing the task master 
    When searching for all open tasks with category "<category>"
    Then open tasks are displayed

Examples:
| category |
| Estate | 
| Personal |
| Trust Account|
| NEU Case |

	