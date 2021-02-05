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
		expect(Dice.new.roll).to be <= 6 
	end 

	it "should roll any number of dice at the same time" do 
		expect(Dice.new.roll(1..n)).to 
	end 
end 