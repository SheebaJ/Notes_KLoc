# 


def generateHashtag(str)
  if str.empty? == true 
  p false
  else str.size < 140 
  res(str)
end
end

def res(s)
	x=[]
	x=s.split(" ")
	x1=[]
	x1.push('#')
	x.each do |y| 
		x1.push(y.capitalize)
	end
y=x1.join("")
if y.length>140 or y=="#"
    p false
else
    p y
end

end
