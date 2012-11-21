class Matrix	
	attr_reader :cells
	
	def initialize(two_dim_array)
		@cells = []
		two_dim_array.each_with_index do |row, index_r|
			row.each_with_index do |number, index_c|
				@cells << ::Cell.new(number, index_r, index_c)
			end
		end		
	end
	
end