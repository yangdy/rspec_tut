Feature: code-breaker starts game
	As a code-breaker
	I want to crack a code

	Scenario: start game
		Given I am not yet playing
		When I start a new name
		Then I should see "Welcome to Codebreaker!"
		And I should see "Enter guess:"
