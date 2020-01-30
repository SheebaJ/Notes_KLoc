require './arr.rb' 
RSpec.describe Arr do 
   context "With valid input" do 
      
      it "should detect when a string  vowel" do 
         s= Arr.new 
         str = 'wuuua fd' 
         s.vowe?(str) == true
        end 
		
      it "should detect when a string doesn't contain vowels" do 
         s= Arr.new 
         str = 'bcdfg' 
         s.vowe?(str) == false
        end 

      it "should detect for empty string" do 
        s= Arr.new 
        str = " "
        s.vowe?(str)  == false
     end 
      
     it "should detect for empty string" do 
        s= Arr.new 
        str = ""
        s.vowe?(str)  == false
     end 

   end 
end