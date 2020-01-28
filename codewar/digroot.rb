n=123
num = 0
n.to_s.split("").each {|x| num += x.to_i}
p num.to_i > 9 ? digital_root(num.to_i) : num.to_i