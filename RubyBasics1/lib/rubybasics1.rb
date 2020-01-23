# Lab 1
# Part I
def sum arr
  num = 0
  arr.each do |i|
    num += i
  end
  return num
end

# Part II
def max_2_sum arr
  # YOUR CODE HERE
  if arr.empty?
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    arr.sort!
    return arr[-2] + arr[-1]
  end
end

# Part III
def sum_to_n? arr, n
  # YOUR CODE HERE
end