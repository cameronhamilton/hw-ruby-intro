# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  
  total = 0
  for number in arr
    total += number
  end
  
  return total
end

def max_2_sum arr
  
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    return arr.sort[-1] + arr.sort[-2]
  end
end

def sum_to_n? arr, n
  
  i = 0
  while i < arr.length
  
    j = 0
    while j < arr.length
    
      if i != j and arr[i] + arr[j] == n
        return true
      end
      
      j += 1
    end
    
    i += 1
  end
  
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  
  if (s.length == 0)
    return false
  elsif s[0] =~ /[A-Za-z]/
    return !s.downcase.start_with?('a', 'e', 'i', 'o', 'u')
  else
    return false
  end
end

def binary_multiple_of_4? s
  
  if s =~ /^[0|1].*/
    return s.to_i(2) % 4 == 0
  else
    return false
  end
end

# Part 3

class BookInStock 
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price) 
    
    if isbn.length == 0 or price <= 0
      raise ArgumentError
    end
    
    @isbn = isbn  
    @price = price  
  end  
  
  def isbn=(isbn)
    @isbn = isbn
  end
  
  def price=(price)
    @price = price
  end

  def price_as_string
    return '$' + (sprintf "%.2f", @price).to_s
  end  
end
