#given a 'dictionary'
#> dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#=> ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


# and a string #'below'

#make a method that returns the strings parts that are in the dictionary
        #and the number of occurances
#> substrings("below", dictionary)
#=> { "below" => 1, "low" => 1 }

dict_array = ['cat','dog','and','ran']
words = Array.new
def sub_strings(string, dictionary)
  words = Array.new
  word_matches = Hash.new
 p words = string.gsub(/[[:punct:]]/, '').split(/ /)
  words.each do |word|  
    if dictionary.include?(word) 
        if word_matches.has_key? (word)
            word_matches[word] = word_matches[word] +1
        else
        p word_matches[word] = 1
        end
    end
  end
  p word_matches
end


sub_strings('cat, cat, dog', dict_array)
