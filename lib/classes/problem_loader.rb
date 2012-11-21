class ProblemLoader
	
	def self.run(file_name)
		path = File.join(File.dirname(__FILE__), '..', 'flat_files', file_name)
		lines = IO.readlines(path)		
		two_dim_array = []
		lines.each do |line|
			line.strip!
			row = line.split(/\s+/).map {|n| n.to_i}
			two_dim_array << row
		end
		
		return two_dim_array
	end
end