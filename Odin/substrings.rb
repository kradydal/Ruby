def substrings(string, dictionary)
  words = string.downcase.split(" ")
  result = {}
  count = 0

  dictionary.each do |search_word|
    words.each do |word|
      count += 1 if word.include? search_word
    end
    result[search_word] = count if count > 0
    count = 0
  end

  return result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts puts substrings("Howdy partner, sit down! How's it going?", dictionary)
