Dir[File.dirname(__FILE__) + '/../lib/classes/*.rb'].each {|file| require file }

describe ProblemLoader do
	describe "run" do	  
	  it "loads the file correctly into a matrix" do
	  	expected = [[8, 2, 4], [0, 7, 1], [3, 7, 9]]
	  	actual = ProblemLoader.run("input_3x3.txt")
	  	actual.should eq expected
	  end
  end
end

describe Matrix do
	describe "initialize" do	  
		let(:two_dim_array) { [[8, 2, 4], [0, 7, 1], [3, 7, 9]] }
		let(:matrix) { Matrix.new(two_dim_array) }
		subject { matrix.cells }
		its(:size) { should eq 9 }
		it "b" do 
			subject.each {|cell| puts cell}
		end
		# it { subject[2].number.should eq 5 }
  end
end