def substrings(word, substrings)
  found = Hash.new(0)
  substrings.each do |string|
    regex = Regexp.new(string, Regexp::IGNORECASE)    
    number_of_matches = word.scan(regex).length
    found[string] = number_of_matches unless number_of_matches == 0
  end
  return found
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Hello hellell", ["Hell", "llo", "Nerd"])
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
