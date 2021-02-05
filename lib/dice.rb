class Dice

@@history = []

	def roll(n = 1)
   @roll = n.times.map {rand(1..6)}
  end

	def save_roll
		@@history.push(@roll)
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
