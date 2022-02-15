class Luhn
    def initialize(string)
      @string = string.delete(" ")
    end
   
    def self.valid?(string)
      new(string).valid?
    end

    def valid?
      return false unless valid_string 
     
      checksum % 10 == 0
    end


    private

    attr_reader :string
    
    def digits
      string.to_i.digits
    end
    
    def valid_string
      string.length > 1 && string !~ /\D/
    end
    
    def checksum
      digits.each_slice(2).sum do |even, odd = 0|
        even + luhn_double(odd)
      end
    end
    
    def luhn_double(int)
        (int * 2).digits.sum
    end
end