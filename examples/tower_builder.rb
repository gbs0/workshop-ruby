require 'pry'

def towerBuilder(n_floors)
	n = n_floors # Put integer into a variable
	tower = []	 # Empty array for hold final result
	stars = '*'	 # Set inital stars number

	n.times do 	 # First loop for iterate over the number of floors 
		tower = tower.map do |space|		# Second loop for add the spaces
			" #{space} "
			# binding.pry
		end
		tower.push(stars) # Add current star count in tower array
    stars += '**' # Add two stars in the counter for even star count
	end
	
	return tower 
end

p towerBuilder(6)