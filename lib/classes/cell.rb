class Cell
	attr_reader :number, :row, :col
	
	def initalize(number, row, col)
		@number = number
		puts "*** @number #{@number}"
		@row = row
		@col = col
		@neighbors_found = false
	end
	
	def neighbors_found?
		@neighbors_found
	end
	
	def neighbors_find
		# TODO
	end
	
	def is_a_neighbor?(cell)
		return false if cell.number <= @number
	end
	
	def to_s
		@number
	end
	
	
end