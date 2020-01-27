#10.times do
#	x=10
#	p x
#end

# def frnds
# 	puts ["Elu","Da","Jan"]
# end
# # print "WE #{frnds} WILL ALWAYS BE TOGETER \n"
# x=frnds
# p x

# def basebl 
# 	x=10
# 	return ["ss","dd","ff"] if x == 10
# 	["xx","yy","zz"]
# end
# p basebl	

# def palindrome
# 	s="momio"
# 	return "#{s} is palindrome" if s == s.reverse 
# 	"#{s} is not palindrome"
# end
#p palindrome
	
# class Colour
# 	#class method
# 	def self.black
# 		"BLACK COLOR"
# 	end
# 	#instance method
# 	def white
# 		"WHITE COLOR"
# 	end
# end
# #class method calling
# p Colour.black
# #instnace method caslling
# x=Colour.new
# p "This is #{x.white}"

#proc
# # f=Proc.new{|x|x}
# # p f["33"]

# f=Proc.new do |x|
# 	x*6
# end
# p f[2]	

#lambda
# f1= lambda {|f| f }
# p f1[10]

# f=->(g){g}
# p f[3]

#ARGUMENTS default normal named
#normal
# def fullname fname,lname
# 	fname+" "+lname
# end
# puts fullname "mother","teresa"	

#named
# def address city:,state:,zip:
# 	p city
# 	p state
# 	p zip
# end
# address zip:21,city:"bangalore",state:"karnataka"	

# default arguments
# def address city:,state:"mm",zip:
# 	p city
# 	p state
# 	p zip
# end
# address zip:21,city:"bangalore"	

#splat arg
# def roster **players_keyval
# 	players_keyval.each do |plyr,pos|
# 		puts "player:#{plyr}"
#         puts "position:#{pos}"
#         puts "\n"
#     end
# end

# data={
# 	"asha":"2nd",
# 	"elu":"1st",
# 	"ba":"0th",
# 	"da":"3rd"
# }        

# roster data

#optional vlaue
# def invv options={}
# 	puts options[:company]
#     puts options[:total]
#     puts options[:state]
# end
# invv company:"kloc",total:4,state:"asdf"

 # for i in 0..14
 # 	p i 
 # end	

#COllection
 # details={
 # 	"Name"=>{
 # 		"first"=>"asha",
 # 		"second"=>"sheeba",
 # 		"last"=>"J"
 # 	},
 # 	"Address"=>{
 # 		"state"=>"karnataka",
 # 		"city"=>"bangalore",
 # 		"zip"=>21
 # 	}
 # }

 # details.each do |k,plyr| 
 # 	puts k 
 # 	plyr.each {|pos,pl| p "#{pos} #{pl}"}
 # end

 #Select
# p (1..10).to_a.select {|x| x.even?}
# p (1..10).to_a.select(&:even?)
# (1..10).to_a.select do |x| 
# 	p x.even? 
# end

# r=%w(My dogs are the best in the world)
# p r.select{|x| x.length>4}

# p %w(a b c d e f).select{|v| v =~ /[aeiou]/ }
#hash was done on irb check notes
# ["1","3.0",4].map{|x| x.to_i}
# ("a".."g").to_a.map{|i| i*2}
# Hash[[1,2.1,3.33,0.9].map{|x| [x,x.to_i]}]
# Hash[%w(A dynamic source programming language).map{|x| [x,x.length]}]


#conditionals
# x=10
# y=20
# if x==y 
# 	puts "same"
# else
# 	puts "nope"
# end

# x=[1,2,3]
# x.each {|x| puts x} unless x.empty?

# x=10
# y=90
# z=80
# if x == y 
# 	puts "x == y"
# elsif x>z
# 	puts "z>y"
# elsif z==y
# 	puts "z==y"
# else
# 	puts "mm"
# end

######################CLASS###############
# class Studnet
# 	attr_accessor :name,:marks,:usn
# 	def initialize(a,b,u)
# 		@n=a
# 		@m=b
# 		@u=u
# 	end
	
# 	def disp
# 	puts @n
# 	puts @m
# 	puts @u
# 	end		
# end

# s=Studnet.new("mmm",90,7)
# s.disp

# class Studnet
# 	attr_accessor :name,:marks,:usn
# 	def initialize()

# 	end

# end

# class Job<Studnet
# 	def job_nm
# 		puts "gt job"
# 	end
# end
	
# class Nojob<Studnet
# 	def job_nmn
# 		puts "no job"
# 	end
# end


# s=Job.new()
# s.job_nm
# s1=Nojob.new()
# s1.job_nmn


# class Foo
 
# 	def bar
# 	  method1
# 	end
   
# 	protected
   
# 	def method1
# 	  puts "Hi this is #{self.class}"
# 	end
   
#   end
   
#   class Blah < Foo
   
# 	def main_method
# 	  method1
# 	end
   
#   end

#   Foo.new.bar
#   Blah.new.main_method
 

#   class Blah1 < Foo
   
# 	def main_method
# 	  self.method1
# 	end
# end
# Blah1.new.main_method


# class A
# 	def m
# 		puts "A"
# 	end
# end
# class B<A
# 	def m
# 		super
# 		puts "B"
# 	end
# end
# # A.new.m
# B.new.m

OOPS