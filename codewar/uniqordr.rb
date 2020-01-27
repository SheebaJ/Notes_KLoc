def unique_in_order(iterable)
  if (iterable.instance_of? Array) == true
  res(iterable)
  else (iterable.instance_of? String) == true
  res(iterable.split(''))
  end
end

def res(s1)
  x=[]
  x.push(s1[0])
  for i in 1..(s1.length)
  	if x[(x.length)-1] != s1[i]
  		x.push(s1[i])
  	end
  end
  p x.compact
end

unique_in_order(["AABBGGTT"])
# unique_in_order([1,2,3,4,5,6])
