class Arr
   def vowe?(x)
       if !x.nil? and x != " " and @x.is_a?Integer
       x.delete('aeiouAEIOU').split.join(" ")
       else 
           return false
   end
end
end

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

     it "should detect when it is a number" do 
        s= Arr.new 
        str = 121
        s.vowe?(str)  == false
     end 

   end 
end