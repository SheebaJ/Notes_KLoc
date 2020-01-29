def createPhoneNumber(numbers)
    first = "" ;
     second = "" ;
      last = ""
    (0..2).each {|x| first += numbers[x].to_s}
    (3..5).each {|x| second += numbers[x].to_s}
    (6..9).each {|x| last += numbers[x].to_s}
   p "(#{first}) #{second}-#{last}"
  end


createPhoneNumber(Array[1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) 
# => returns"(123) 456-7890"