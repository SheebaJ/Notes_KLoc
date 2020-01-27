def filter_list(l)
x1=[]
l.each do |x|
  if (x.instance_of? Integer) == true
    x1.push(x)
	end
end
	p x1
end

