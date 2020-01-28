def expanded_form(num)
  len = num.to_s.length
  result = ""
  e=num.to_s.split("")
  e.each_with_index { |n,i| r += n + "0" * (len - i - 1) + " + " if n != "0"}
  result[0..-4]
end

p expanded_form(1234)


# https://github.com/adrianeyre/codewars/blob/master/Ruby/5KYU/weight.rb#L54