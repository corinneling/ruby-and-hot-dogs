# Make a Hot Dog Stand

### Exercise to learn OOP with Ruby

### Required Features
* Print text to the command line
* Accept user input from the command line
* User questionnaire
   * Prints questions to the command line
   * Includes the required user responses as options
   * Saves the user’s answers
* User Flow
   * Make bun choice optional
   * Make condiment choice optional
* Order description
   * Once the questionnaire is complete, print a sentence describing the user’s order.

### Structure
_Stand:_ Will bring everything together to start the program

_Cook:_ Will communicate with the user

_Kitchen:_ Will store ingredients files

_Ingredients:_ Will create functionality for the individual ingredients to use

_Hot Dog:_ Will store hot dog information and specific display options

_Bun:_ Will store bun information and specific display options

_Condiments:_ Will store condiments information and specific display options

### Features to Complete
1. Validate user responses
   1. When user gives invalid response, present an error and re-ask the question
1. Require quantity of 1 dog for the hot dog order
1. Allow a maximum of 1 bun for the hot dog order
1. Allow for no maximum on condiment choices
