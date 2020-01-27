# source_array=[5,3,2,8,1,4]
# od = source_array.select(&:odd?).sort
# # p od
# p source_array.map {|input| input.even? ? input : od.shift }

def odd_sort(lst)
    for i in  0..((lst.length)-1)
        if (lst[i]%2!=0)
            for j in 0..((lst.length)-1)
                if(lst[j]%2!=0 and lst[i]<lst[j])
                    lst[i],lst[j]=lst[j],lst[i]
                end
            end
        end
    end
    return lst
end
l=[5,3,2,8,1,4]
print(odd_sort(l))