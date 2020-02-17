# Ruby Basics Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn, :price

 def initialize isbn, price
    
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
    end
  end