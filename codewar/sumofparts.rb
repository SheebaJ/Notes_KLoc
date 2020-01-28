# ls=[1,2]
# s=ls.sum
# l=[]
# for i in 0..((ls.length)-1)
#    l.push(s)
#     s-=ls[i]
# end
# if l.length==0 
#     p l.push(0)
# else 
#     x=l.push(0)
#     p x
# end

ls=[1,2,3]
l=[0]
for i in ls do
    l.push(ls[i]+l[ls.length-2])
end


