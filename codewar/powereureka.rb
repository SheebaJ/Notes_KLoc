def sum_dig_pow(a,b)
	s=[]
	for i in a..(b)
		if i.to_s.size <=1
			s.push(i)
		else i.to_s.size >1
			n=i.to_s.size
			d=[]
			d[0]=1
			d=d+i.to_s.split(//).each.map(&:to_i)
			#print d
			indexVal = 0
			sum=0
			while indexVal < d.length
				if indexVal != 0
					sum+=d[indexVal]**indexVal
				end
				indexVal+=1
			end
			if sum == i
				s.push(i)
			end
		end
	end
	p s
end

puts sum_dig_pow(90,100)

