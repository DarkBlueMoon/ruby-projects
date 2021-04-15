# Take in a string and shift each letter in that string by the shift factor
# looping around as necessary.
# Ex. 
# caesar_cipher('cat', 5) -> 'hfy'
# caesar_cipher('cat', -5) -> 'xvo'

# Letter case is preserved (uppercase stays uppercase, lowercase stays lowercase)
# Punctuation isn't shifted at all

require 'pry'

def caesar_cipher(string, shift)
  # Steps (in no particular order):
  # Convert string into array of numbers (ASCII code for letters)
  ascii = string.codepoints

  # binding.pry

  shifted = ascii.map do |num| 
    num + shift
  end
  # shifted = ascii.map do |num|
  #   if num.between?(65, 90) 
  #     (num + 26) - shift
  #     # puts "uppercase"
  #   elsif num.between?(97, 122) 
  #     (num - 26) + shift
  #   else 
  #     puts "neither"
  #   end

  # Apply the shift to each number in the array IF that number is a letter
  # -- Probably have to do two different shifts: one for uppercase, one for lowercase
  # Check for wrap-around. ex. ('A', -3).
  # -- A is 65 in ASCII, -3 is 62.
  # -- 62 is not within the range of uppercase (65 - 90), so
  # -- Add 26 to num (65) first, then subtract shift (-3) to get 88 (X)
  #                        ex. ('q', 18).
  # -- q is 113 in ASCII, 18 is 131.
  # -- 131 is not within the range of lowercase (97 - 122), so
  # -- Sub 26 from num (113) first, then add shift (18) to get 105 (i)
  shifted.pack('c*')
end

p caesar_cipher("cat!", 5)