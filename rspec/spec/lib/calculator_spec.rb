class Calculator
	
	def initialize(n1,n2)
		@a=n1
		@b=n2 
	end
	def add
		if ((@a.is_a?Integer and @b.is_a?Integer) or (@a.is_a?Float and @b.is_a?Float)) and (not @a.nil? or not @b.nil?) and (@a != "" or @b != "")	
            return (@a+@b)
        else
            return "only numbers allowed"
	end
	end

    def div
    if ((@a.is_a?Integer and @b.is_a?Integer) or (@a.is_a?Float and @b.is_a?Float)) and (not @a.nil? or not @b.nil?) and (@a != "" or @b != "")
        if  @b != 0
            return (@a/@b)
        end
        return "only numbers allowed"
    end
        return "only numbers allowed"  
end
    
	def diff
    if ((@a.is_a?Integer and @b.is_a?Integer) or (@a.is_a?Float and @b.is_a?Float)) and (not @a.nil? or not @b.nil?) and (@a != "" or @b != "")
            return (@a-@b)
    else
        return "only numbers allowed"
	end
	end	
	def mul
	    if ((@a.is_a?Integer and @b.is_a?Integer) or (@a.is_a?Float and @b.is_a?Float)) and (not @a.nil? or not @b.nil?) and (@a != "" or @b != "")
            return (@a*@b)
        else
            return "only numbers allowed"
	end
end
end

RSpec.describe Calculator do



    describe '#add' do
    
        context "two numbers addition" do
            subject{described_class.new(2,4)}
            it "returns 6" do
                expect(subject.add).to eql(6)
            end
        end

     context "two negative numbers addition " do
      	subject{described_class.new(-2,-4)}
      	it "returns 6" do
          expect(subject.add).to eql(-6)
        end
      end

	  context "one negative and one positive number addition " do
      	subject{described_class.new(-2,4)}
      	it "returns 2" do
          expect(subject.add).to eql(2)
        end
      end

      context "given 17,'a'" do
      	subject{described_class.new(17,'a')}
        it "returns error" do
          subject.add.should == "only numbers allowed"
        end
      end

      context "given '17','17'" do
      	subject{described_class.new("17","17")}
        it "returns false" do
          subject.add.should == "only numbers allowed"
        end
      end

      context "given 'nil','17'" do
      	subject{described_class.new("nil","17")}
        it "returns false" do
          subject.add.should == "only numbers allowed"
        end
      end

      context "given '10','nil'" do
      	subject{described_class.new(10,"nil")}
        it "returns false" do
          subject.add.should == "only numbers allowed"
        end
      end

      context "given 'nil','nil'" do
      	subject{described_class.new("nil","nil")}
        it "returns false" do
          subject.add.should == "only numbers allowed"
        end
      end

      context "given '','nil'" do
      	subject{described_class.new("","nil")}
        it "returns false" do
          subject.add.should == "only numbers allowed"
        end
      end

      context "given 'nil',''" do
      	subject{described_class.new("nil","")}
        it "returns false" do
          subject.add.should == "only numbers allowed"
        end
      end

      context "given '',''" do
      	subject{described_class.new("","")}
        it "returns false" do
          subject.add.should == "only numbers allowed"
        end
      end

      context "given 110.0,10.0 " do
      	subject{described_class.new(110.0,10.0)}
        it "returns value" do
          subject.add.should == 120
        end
      end
  
    end

  describe '#diff' do
    
    context "two numbers subtraction" do
      	subject{described_class.new(2,4)}
      	it "returns 6" do
          expect(subject.diff).to eql(-2)
        end
      end

     context "two negative numbers for subtraction " do
      	subject{described_class.new(-2,-4)}
      	it "returns -2" do
          expect(subject.diff).to eql(2)
        end
      end

	  context "one negative and one positive number subtraction " do
      	subject{described_class.new(-2,4)}
      	it "returns 6" do
          expect(subject.diff).to eql(-6)
        end
      end

      context "given 17,'a' " do
      	subject{described_class.new(17,'a')}
        it "returns false" do
          subject.diff.should == "only numbers allowed"
        end
      end

      context "given '17','17'" do
      	subject{described_class.new("17","17")}
        it "returns false" do
          subject.diff.should == "only numbers allowed"
        end
      end

      context "given 'nil','17'" do
      	subject{described_class.new("nil","17")}
        it "returns false" do
          subject.diff.should == "only numbers allowed"
        end
      end

      context "given '10','nil'" do
      	subject{described_class.new(10,"nil")}
        it "returns false" do
          subject.diff.should == "only numbers allowed"
        end
      end

      context "given 'nil','nil'" do
      	subject{described_class.new("nil","nil")}
        it "returns false" do
          subject.diff.should == "only numbers allowed"
        end
      end

      context "given '','nil'" do
      	subject{described_class.new("","nil")}
        it "returns false" do
          subject.diff.should == "only numbers allowed"
        end
      end

      context "given 'nil',''" do
      	subject{described_class.new("nil","")}
        it "returns false" do
          subject.diff.should == "only numbers allowed"
        end
      end

      context "given '',''" do
      	subject{described_class.new("","")}
        it "returns false" do
          subject.diff.should == "only numbers allowed"
        end
      end

      context "given 110.0,10.0 " do
      	subject{described_class.new(110.0,10.0)}
        it "returns value" do
          subject.diff.should == 100
        end
      end
  
    end

    describe '#mul' do
    
    context "two numbers multiplication" do
      	subject{described_class.new(2,4)}
      	it "returns 8" do
          expect(subject.mul).to eql(8)
        end
      end

     context "two negative numbers for multiplication " do
      	subject{described_class.new(-2,-4)}
      	it "returns 8" do
          expect(subject.mul).to eql(8)
        end
      end

	  context "one negative and one positive number multiplication " do
      	subject{described_class.new(-2,4)}
      	it "returns -8" do
          expect(subject.mul).to eql(-8)
        end
      end

      context "given 17,'a' " do
      	subject{described_class.new(17,'a')}
        it "returns false" do
          subject.mul.should == "only numbers allowed"
        end
      end

      context "given '17','17'" do
      	subject{described_class.new("17","17")}
        it "returns false" do
          subject.mul.should == "only numbers allowed"
        end
      end

      context "given 'nil','10'" do
      	subject{described_class.new("nil","17")}
        it "returns false" do
          subject.mul.should == "only numbers allowed"
        end
      end

      context "given '10','nil'" do
      	subject{described_class.new(10,"nil")}
        it "returns false" do
          subject.mul.should == "only numbers allowed"
        end
      end

      context "given 'nil','nil'" do
      	subject{described_class.new("nil","nil")}
        it "returns false" do
          subject.mul.should == "only numbers allowed"
        end
      end

      context "given '','nil'" do
      	subject{described_class.new("","nil")}
        it "returns false" do
          subject.mul.should == "only numbers allowed"
        end
      end

      context "given 'nil',''" do
      	subject{described_class.new("nil","")}
        it "returns false" do
          subject.mul.should == "only numbers allowed"
        end
      end

      context "given '',''" do
      	subject{described_class.new("","")}
        it "returns false" do
          subject.mul.should == "only numbers allowed"
        end
      end

      context "given 110.0,10.0 " do
      	subject{described_class.new(110.0,10.0)}
        it "returns value" do
          subject.mul.should == 1100.0
        end
      end
  
    end

      describe '#div' do
    
    context "two numbers division" do
      	subject{described_class.new(8,4)}
      	it "returns 2" do
          expect(subject.div).to eql(2)
        end
      end

     context "two negative numbers for division " do
      	subject{described_class.new(-2,-4)}
      	it "returns 0" do
          expect(subject.div).to eql(0)
        end
      end

  	 context "Zero by division " do
      	subject{described_class.new(-2,0)}
      	it "returns error" do
          subject.div.should == "only numbers allowed"
        end
      end


     context "division of 0 by any number " do
      	subject{described_class.new(0,-3)}
      	it "returns 0" do
          expect(subject.div).to eql(0)
        end
      end

	  context "one negative and one positive number division " do
      	subject{described_class.new(-2,3)}
      	it "returns -1" do
          expect(subject.div).to eql(-1)
        end
      end

        context "one negative and one positive number division " do
      	subject{described_class.new(2,-3)}
      	it "returns -1" do
          expect(subject.div).to eql(-1)
        end
      end

      context "given 17,'a' " do
      	subject{described_class.new(17,'a')}
        it "returns false" do
          subject.div.should == "only numbers allowed"
        end
      end

    end

  end

