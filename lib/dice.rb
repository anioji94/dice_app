class Dice

@@history = []

	def roll(n = 1)
	 @roll = n.times.map {rand(1..6)}
	 @@history.push(@roll)
	 @roll 
  end

	def view_roll
		@@history 
	end

	def score 
		total = []
		@@history.each do |roll|
			total.push(roll) 
		end
		# sum each roll
		# sum total roll
		total.flatten.sum
		
	end 

end
