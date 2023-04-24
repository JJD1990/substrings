def substrings(message, dictionary)
    result = Hash.new(0)
    message = message.downcase.gsub(/[^a-z\s]/, '').split
    message.each do |word|
      dictionary.each do |sub|
        result[sub] += word.scan(sub).count
      end
    end
    result
  end
  
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  puts substrings("below", dictionary)
  # => { "below" => 1, "low" => 1 }
  puts substrings("Howdy partner, sit down! How's it going?", dictionary)
  # => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
  