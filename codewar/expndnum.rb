def expanded_form(num)
  len = num.to_s.length
  r = ""
  e=num.to_s.split("")
  e.each_with_index { |n,i| r += n + "0" * (len - i - 1) + " + " if n != "0"}
  r[0..-4]
end

p expanded_form(70304)


# https://github.com/adrianeyre/codewars/blob/master/Ruby/5KYU/weight.rb#L54