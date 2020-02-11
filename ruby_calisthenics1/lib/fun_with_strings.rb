module FunWithStrings
  def palindrome?
    # your code here
    # use downcase, gsub, and reverse for self.
    test = self.downcase.gsub(/[^a-z]/, '')
     test == test.reverse
  end
  
  def count_words
    # your code here
    test = Hash.new(0)
    other = self.downcase.gsub(/[^a-z\s]/,'')
    other.split.each do |x|
      test[x]+=1
      end
      test
  end
  
  def anagram_groups
    # your code here
      test = self.downcase.gsub(/[^a-z\s]/,'')
      test.split.group_by{|x|x.chars.sort}.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
