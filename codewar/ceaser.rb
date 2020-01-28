class CaesarCipher
    def initialize(shift)
      @rotate = ('A'..'Z').to_a.rotate(shift).join
    end
  
    def encode(string)
      string.upcase.tr "A-Z", @rotate
    end
  
    def decode(string)
      string.tr @rotate, "A-Z"
    end
  end

  c = CaesarCipher.new(3); # creates a CipherHelper with a shift of five
  p c
  p c.encode('hello') # returns 'HTIJBFWX'
p c.decode('KHOOR') # returns 'WAFFLES'  

  
  