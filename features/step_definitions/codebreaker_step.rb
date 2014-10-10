module Helpers
	class Output 
		def messages
			@messages ||= []
		end

		def puts(message)
			messages << message
		end
	end

	def output
		@output ||= Output.new
	end
end

World(Helpers)

Given /^I am not yet playing$/ do
end

When /^I start a new name$/ do
	game = Codebreaker::Game.new(output)
	game.start('1234')
end

Then /^I should see "([^"]*)"$/ do |message|
	expect(output.messages).to include(message)
end

Given /^the secret code is "([^"]*)"$/ do |secret|
  @game = Codebreaker::Game.new(output)
  @game.start(secret)
end

When /^I guess "([^"]*)"$/  do |guess|
  @game.guess(guess)
end

Then(/^the mark should be "([^"]*)"$/) do |mark|
  expect(output.messages).to include(mark)
end


