val=[]
(1..26).each do |x|
	val.push(x)
end
# p val

ky=[]
('a'..'z').each do |x|
	ky.push(x)
end
# p ky

nh={}
(0..25).each do |x|
	nh[ky[x]]=val[x]
end

text="Tauheed."
t=text.downcase
res=[]
t.each_char { |x| res.push(nh[x])  }
r=res.compact
p r.join(" ")
