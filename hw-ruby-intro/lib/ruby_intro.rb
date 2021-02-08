# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.max(2).sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.empty?
    return false
  else
    arr.combination(2).any? {|x, y| x + y == n}
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty?
    return false
  end
  'bcdfghjklmnpqrstvwxyz'.each_char { |c|
  if s[0].casecmp?(c) 
    return true
  end
  }
  false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.empty?
    return false
  end
  s.each_char { |c|
  if !["0","1"].include?(c)
    return false
  end
  }
  if s.to_i(2)%4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
def isbn
  @isbn
end

def isbn=(s)
  @isbn = s
end

def price
  @price
end

def price=(pr)
  @price = pr
end

def initialize(isbn, price)
  if isbn.empty? or price <= 0.00
    raise ArgumentError
  end
  @isbn = isbn
  @price = price
end

def price_as_string
  "$" +  sprintf('%.2f', @price)
end
end
