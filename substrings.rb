dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
    make_hash = {}
   downcase = string.downcase!
   remove_non_letters = downcase.gsub!(/\W+/, ' ').split(" ").to_s

   dictionary.each do |word|
    make_hash[word] = remove_non_letters.scan(word).count if remove_non_letters.include?(word)
  end


make_hash
   
end

 p substrings("Howdy partner, sit down! How's it going?", dictionary)