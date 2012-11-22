class Cell
	attr_reader :number, :row, :col
	
	def initialize(number, row, col)
		@number = number
		@row = row
		@col = col
		@neighbors = []
	end
	
	def neighbors_found?
		@neighbors.size > 0
	end
	
	def meet_neighbors(cells)
		cells.each do |cell|
			add_neighbor(cell) if is_a_neighbor?(cell)
		end
	end
	
	def is_a_neighbor?(cell)
		return false unless is_smaller_than?(cell)
		return false unless is_adjacent_col?(cell)
		return false unless is_adjacent_row?(cell)
		return true
	end

	def is_smaller_than?(cell)
		return (@number < cell.number)
	end
	
	def is_adjacent_row?(cell)
		return ((@row - cell.row).abs <= 1)
	end

	def is_adjacent_col?(cell)
		return ((@col - cell.col).abs <= 1)
	end

	def add_neighbor(cell)
		@neighbors << cell
	end

	def neighbors_string
		@neighbors_string ||= (@neighbors.map {|neighbor| neighbor.to_s}).join(' ')
	end

	def to_s
		@number
	end
	
	
end