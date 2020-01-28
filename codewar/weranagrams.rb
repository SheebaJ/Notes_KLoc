def a(word,words)
ar=[]
for i in words
    if i.split("").sort.join("") == words.split("").sort.join("")
        ar.append(i)
    end
end
return ar
end

p a["ab"],["ab",ba]