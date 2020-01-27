

l=["we","er","rr","tr","e"]

def f(l)
    len=l.length
    s="likes this"
    if(len == 0)
        p "no one "+s
    elsif(len == 1)
        p "#{l[0]} "+s
    elsif(len == 2)
        p "#{l[0]} and #{l[1]} "+s
    elsif(len == 3)
        p "#{l[0]},#{l[1]} and #{l[2]}"+s
    else(len>3)
        li=len-2
        p "#{l[0]},#{l[1]} and #{li} others "+s
    end
end
f(l)


        