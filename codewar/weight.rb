def order_weight(strng)
    w = {}
    # p w
    war = []
    s = strng.to_s.split(" ")
    # p s
   s.each_with_index do |x,i|
    # p "#{x} #{i}"
       n = 0
    x.split("").each do |y|
         n += y.to_i
       end
      #  p n
      w[x] = n
    end
    x=" "
    (w.values.sort).each{|i| x+=w.key(i)+ " "}
    p x[1..(x.size-2)]
#     Hash[w.sort_by{|k, v| v}].each do |v,k|
#     #   puts "v=#{v}   k=#{k}"
#       war.push([k,v])
#     end
#     #  p war
#      z=Hash[w{|k, v| w.values}]
# p z
  end
  
 order_weight("2000 2000 10003 10003 123 1234000 44444444 9999")
#  "11 11 2000 10003 22 123 1234000 44444444 9999")


#  Test.describe("Order Weight") do
#   Test.it("Basic tests") do
#       Test.assert_equals(order_weight("103 123 4444 99 2000"), "2000 103 123 4444 99")
#       Test.assert_equals(order_weight("2000 10003 1234000 44444444 9999 11 11 22 123"), "11 11 2000 10003 22 123 1234000 44444444 9999")
#   end
# end

# Expected: "1 2 200 4 4 6 6 7 7 18 27 72 81 9 91 425 31064 7920 67407 96488 34608557 71899703",
#  instead got: "1 200 200 4 6 7 9 9 9 9 9 91 425 31064 7920 67407 96488 34608557 71899703"
