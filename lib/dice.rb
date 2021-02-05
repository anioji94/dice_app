class Dice

@@history = []

	def roll(n = 1)
   @roll = n.times.map {rand(1..6)}
  end

	def save_roll
		@@history.push(@roll)
	end


end
