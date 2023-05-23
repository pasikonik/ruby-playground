# TODO: create a RomanNumerals helper class
class RomanNumerals
    ROMAN_NUMBERS = {
      1000 => "M",  
       900 => "CM",  
       500 => "D",  
       400 => "CD",
       100 => "C",  
        90 => "XC",  
        50 => "L",  
        40 => "XL",  
        10 => "X",  
         9 => "IX",  
         5 => "V",  
         4 => "IV",  
         1 => "I",  
    }.freeze
    
    def self.to_roman(number)
      n = number
      roman = ''
      ROMAN_NUMBERS.each do |value, letter|
        roman << letter * (n / value)
        n = n % value
      end
      roman
    end
    
    def self.from_roman(number)
      decimal = 0

      ROMAN_NUMBERS.map do |value, letter|
        p value
        division, remainder = number.divmod(value)
        letter * division
      end.join
    end
  end

p RomanNumerals.to_roman(2008) == "MMVIII"
p RomanNumerals.from_roman('MXL') == 1040