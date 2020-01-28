def pig_it(text)
    ls= text.split()
    for i in ls do 
        i[i.length] = i[0]
        i[0]=""   
    end
    for i in ls do
        if i != "?" and i != "!"
            i[i.length] = 'ay'
        end
    end
    p ls
end
pig_it("hello my name is ")