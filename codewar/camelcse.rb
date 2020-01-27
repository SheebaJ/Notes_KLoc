class String
  	def camelcase
		x1=[]
		split.each do |y| 
			x1.push(y.capitalize)
	end
	p x1.join("")
	end
end

"hello world".camelcase
