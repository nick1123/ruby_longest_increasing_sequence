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
	let(:two_dim_array) { [[8, 2, 4], [0, 7, 1], [3, 7, 9]] }
	let(:matrix) { Matrix.new(two_dim_array) }
	describe "initialize" do	  
		subject { matrix.cells }
		its(:size) { should eq 9 }

		it { subject[2].number.should eq 4 }
		it { subject[2].row.should eq 0 }
		it { subject[2].col.should eq 2 }

		it { subject[7].number.should eq 7 }
		it { subject[7].row.should eq 2 }
		it { subject[7].col.should eq 1 }
  end

  describe "meet_neighbors" do
  	before(:each) { matrix.meet_neighbors }
		subject { matrix.cells }

		it { subject[0].neighbors_string.should eq '' }          # 8
		it { subject[1].neighbors_string.should eq '8 4 7' }     # 2
		it { subject[2].neighbors_string.should eq '7' }         # 4
		it { subject[3].neighbors_string.should eq '8 2 7 3 7' } # 0
		it { subject[4].neighbors_string.should eq '8 9' }       # 7
		it { subject[5].neighbors_string.should eq '2 4 7 7 9' } # 1
		it { subject[6].neighbors_string.should eq '7 7' }       # 3
		it { subject[7].neighbors_string.should eq '9' }         # 7
		it { subject[8].neighbors_string.should eq '' }          # 9

  end
end

describe Cell do


end