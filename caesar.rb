# Take in a string and shift each letter in that string by the shift factor
# looping around as necessary.
# Ex. 
# caesar_cipher('cat', 5) -> 'hfy'
# caesar_cipher('cat', -5) -> 'xvo'

# Letter case is preserved (uppercase stays uppercase, lowercase stays lowercase)
# Punctuation isn't shifted at all
UPCASE_OFFSET = 65
DOWNCASE_OFFSET = 97

def caesar_cipher(string, shift)
  # Steps (in no particular order):
  # Convert string into array of numbers (ASCII code for letters)
  ascii = string.codepoints
  
  # Apply the shift to each number in the array IF that number is a letter
  shifted = ascii.map do |num| 
    # Check for wrap-around.
    if num.between?(65, 90)
      ((num - UPCASE_OFFSET + shift) % 26) + UPCASE_OFFSET
    elsif num.between?(97, 122)
      ((num - DOWNCASE_OFFSET + shift) % 26) + DOWNCASE_OFFSET
    else
      num
    end
  end

  # Convert the array of numbers back into a single string.
  shifted.pack('c*')
end

p caesar_cipher("What a string!", 5)