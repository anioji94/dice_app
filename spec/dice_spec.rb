# objects = Dice
# message = Roll

require 'dice'

describe Dice do

	it "should make a new dice" do
		expect(Dice.new.is_a?(Dice)).to eq true
	end

	it "should roll" do
		expect(Dice.new).to respond_to(:roll)
	end

	it "should give a number between 1 and 6" do
		expect(Dice.new.roll[0]).to be <= 6
	end

	it "should roll any number of dice at the same time" do
		expect(Dice.new.roll(3)).to be_instance_of Array
	end

	it "should record all dice rolls" do
		dice = subject
	  dice.roll(4)
		expect(dice.save_roll).to be_instance_of Array
	end

	it "should return a score for all rolls" do
		dice = subject
		dice.roll(4)
		dice.save_roll
		dice.roll(3)
		dice.save_roll		
		expect(dice.score).to be_instance_of Integer
	end
end
