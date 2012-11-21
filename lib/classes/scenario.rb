class Scenario
	
	def self.run(file_name)
		puts '**************'
		two_dim_array = ProblemLoader.run(file_name)
		matrix = Matrix.new(two_dim_array)
	end
	
end