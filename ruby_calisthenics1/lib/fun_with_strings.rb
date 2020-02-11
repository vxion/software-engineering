module FunWithStrings
  def palindrome?
    # your code here
    # use downcase, gsub, and reverse for self.
     self.downcase.gsub(/[^a-z]/, '') == self.downcase.gsub(/[^a-z]/, '').reverse
  end
  def count_words
    # your code here
  end
  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
