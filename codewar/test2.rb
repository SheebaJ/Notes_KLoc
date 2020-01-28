def title_case(title, minor_words="")
    arr = []
    minor_words = minor_words.downcase.split(" ")
    title.split(" ").each_with_index do |x,i|
      if (minor_words.include? x.downcase) && (i != 0)
        arr << x.downcase
        p x.downcase
      else
        arr << x.capitalize
        p x.capitalize
      end
    end
    arr.join(" ")
  end
  p title_case('a clash of KINGS', 'a an the of') # return: 'A Clash of Kings'
