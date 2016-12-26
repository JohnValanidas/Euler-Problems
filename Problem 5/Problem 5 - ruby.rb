#Very brute force and poor use of computation time. Should find a better
#way of computing this. 

def boolean_smallest_miltiple (num, low, high)
  while low < high
    if num%low != 0
      return false
    end
    low = low + 1
  end
  true
end

def smallest_miltiple (low, high)
  num = 0
  not_found = true
  while not_found
    num = num + 1
    if (boolean_smallest_miltiple(num,low,high) == true)
      not_found = false
    end
  end
  num
end

puts smallest_miltiple(1, 20)
