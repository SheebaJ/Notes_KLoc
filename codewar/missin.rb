def numer(ar)
orda=[]
ar.each do |ee|
	x=ee.ord
	orda.push(x)
end
return orda
end

# arr=('a'..'z').to_a
# x=[]
# x=numer(arr)


arr=["P","Q","S"]
y=[]
y=numer(arr)
z=[]
len=arr.length
(y[0]..y[len-1]).each do |x|
	z.push(x)
end
sumy=y.sum
sumz=z.sum
diff=sumz-sumy
p diff.chr

