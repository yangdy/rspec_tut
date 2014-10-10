require 'spec_helper'

module Codebreaker
  describe Game do
		describe "#start" do


			it "sends a welcome message" do
				output = double('output').as_null_object
				game = Game.new(output)

				expect(output).to receive(:puts).with('Welcome to Codebreaker!')
				#output.should_receive(:puts).with('Welcome to Codebreaker!')
				game.start
			end
			it "prompts for the first guess" do
				output = double('output').as_null_object
				game = Game.new(output)

				expect(output).to receive(:puts).with('Enter guess:')
				#output.should_receive(:puts).with('Entry guess:')
				game.start
			end
		end
  end
end
