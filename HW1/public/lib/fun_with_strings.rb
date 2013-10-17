module FunWithStrings
  def palindrome?
    test = self.gsub(/\W/,"").downcase
    test == test.reverse
  end
  def count_words
    counter = Hash.new(0)
    self.gsub(/\W/," ").split().each{ |word| counter[word.downcase]+=1 }
    counter
  end
  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
