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
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
