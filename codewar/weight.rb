def order_weight(strng)
    w = {}
    # p w
    war = []
    s = strng.to_s.split(" ").sort
    s.each_with_index do |x,i|
      n = 0
      x.split("").each do |y|
        n += y.to_i
        # p n
      end
      w[x] = n
    end
    # p s
    # p w
    Hash[w.sort_by{|k, v| v}].each do |v,k|
    #   puts "v=#{v}   k=#{k}"
      war.push([k,v])
    end
    #  p war
     z=Hash[w.sort_by{|k, v| w.values}]
    #  p z
     p z.keys.join(" ")
  end
  
 order_weight("103 123 4444 99 2000")