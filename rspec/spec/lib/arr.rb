class Arr
    def vowe?(x)
        if !x.nil? and x != " "
        x.delete('aeiouAEIOU').split.join(" ")
        else 
            return false
    end
end
end

