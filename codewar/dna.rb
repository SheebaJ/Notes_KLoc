dna="GTAT"
x=dna
y=""
dna.each_char do |x|
	if x == "A"
		x.replace("T")
	elsif x == "T"
		x.replace("A")
	elsif x == "C"
		x.replace("G")
	else x=="G"
		x.replace("C")
	end
	y+=x
end
p y

				