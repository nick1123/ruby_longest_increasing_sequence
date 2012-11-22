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

	def meet_neighbors
		@cells.each {|cell| cell.meet_neighbors(@cells)}
	end

	def find_longest_sequence
		longest_sequence = cells[0].longest_sequence
		cells.each do |cell|
			longest_sequence = cell.longest_sequence if cell.longest_sequence.size > longest_sequence.size
		end

		return longest_sequence.join(" ")
	end
	
end