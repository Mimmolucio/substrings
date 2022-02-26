dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
    # Temporary Hash for scan
    found_words = {}
    # Final cleaned Hash
    result = {}
    
    dictionary.each do |word|
        # Scan for words matching
        found_words[word] = string.downcase.scan(word).count
        # Only put words with matches > 0 in final Hash
        result[word] = found_words[word] unless found_words[word] == 0
    end

    result
        

end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)