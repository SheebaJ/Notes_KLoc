# s1="abc"
# x=((s1.size..s1.size).flat_map{|k| s1.split(//).permutation(k).to_a}).sort
# p (x[(x.length/2)-1]).join("")

def createPhoneNumber(numbers)
    first = "" ; second = "" ; last = ""
    0.upto(2) {|x| first += numbers[x].to_s}
    3.upto(5) {|x| second += numbers[x].to_s}
    6.upto(9) {|x| last += numbers[x].to_s}
   p "'('#{first}')' #{second}-#{last}"
  end


createPhoneNumber(Array[1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) 
# => returns"(123) 456-7890"