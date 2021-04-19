# Takes a string of text as the first argument and 
# an array of substrings as the second argument.
# Returns a hash listing each substring in the original string
# and how many times it occurred.
# e.g.
#   dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#   substrings("below", dictionary)
#   => { "below" => 1, "low" => 1 }

def substrings(text, arr_of_substrings)
  # Looping through every entry in the dictionary.
  # Checking if that entry is a substring of the text.

  text_arr = text.downcase.split
  result = Hash.new(0)

  arr_of_substrings.each do |substr|
    text_arr.each do |elem|
      if elem.include?(substr)
        result[substr] += 1
      end
    end
  end
  result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)