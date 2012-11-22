class Scenario
	
	def self.run(file_name)
		two_dim_array = ProblemLoader.run(file_name)
		matrix = Matrix.new(two_dim_array)
    matrix.meet_neighbors
    puts matrix.find_longest_sequence
	end
	
end