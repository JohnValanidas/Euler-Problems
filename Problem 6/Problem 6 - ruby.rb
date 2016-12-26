def sum_of_squares(low, high)
  total = 0
  while low <= high
    total = total + low**2
    low = low + 1
  end
  total
end

def square_sum(low, high)
  total = 0
  while low <= high
    total = low + total
    low = low + 1
  end
  total**2
end

def sum_square_difference(low, high)
  num = sum_of_squares(low, high)
  difference = square_sum(low, high)- num
  difference
end



puts sum_square_difference(1, 100)
