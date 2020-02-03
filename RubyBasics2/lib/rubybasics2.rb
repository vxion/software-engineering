# Strings and Regular Expressions

# Part I
def hello(name)
  # YOUR CODE HERE
   return "Hello, " + name
end

# Part II
def starts_with_consonant? s
  # YOUR CODE HERE
  if(s.to_s.empty?) 
    return nil
  else
    char = s[0]
    if (char.match(/[aAeEiIoOuU\W]/) == nil)
      return true
    else
      return false
    end
  end 
end 

# Part III
def binary_multiple_of_4? s
	return true if s == "0"
	/^[10]*00$/.match(s) != nil
end