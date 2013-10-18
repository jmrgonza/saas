module FunWithStrings
  def palindrome?
    test = self.gsub(/\W/,"").downcase
    test == test.reverse
  end
  def count_words
    counter = Hash.new(0)
    self.gsub(/\W/," ").strip().split(/\s+/).each{ |word| counter[word.downcase]+=1 }
    counter
  end
  def anagram_groups
    groups = Hash.new(0)
    self.strip().split(/\s+/).each do |word|
      s = word.downcase.chars.sort.join.to_sym
      if groups.has_key?(s)
        if !groups[s].include?(word)
          groups[s] = groups[s] << word
        end
      else
        groups[s] = [word]
      end
    end
    groups.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
