def t(l)
    r1=[]
    c1=[]


    for i in 0..2
        row=([l[i][0],l[i][1],l[i][2]]).uniq
        if row.length == 1 and row[0] != 0
            return l[i][0]
        end
    end
    for i in 0..2
        col=([l[0][i],l[1][i],l[2][i]]).uniq
        if col.length == 1 and col[0] != 0
            return l[0][i]
        end
    end
    if l[0][0] == l[1][1] and l[1][1]==l[2][2] and l[1][1] != 0
        return l[1][1]
    end
    if l[0][2] == l[1][1] and l[1][1]==l[2][0] and l[1][1] != 0
        return l[1][1]
    end
    for i in l
        if i.include? 0
            return -1# isIt = true
        end
    end
    return 0
end
p t(   [[2, 0, 2], [0, 0, 1], [1, 0, 1]]  )