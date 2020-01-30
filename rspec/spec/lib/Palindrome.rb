class Palindrome
    def initialize(x)
        @x=x
    end

    def check_for_palindrome
     if !@x.nil? and !@x.is_a?(String) 
        @x.to_s.reverse == @x.to_s
     else
        return false
    end
end
  end


p Palindrome.new(" ").check_for_palindrome