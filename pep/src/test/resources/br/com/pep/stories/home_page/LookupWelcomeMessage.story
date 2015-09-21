Scenario: Looking up the welcome message of home page
Given the user is on the PEP home page
When the user looks up the welcome message '<message>'
Then they should see the welcome message '<message>'

Examples:
| message      | 
| Bem Vindo!   | 
