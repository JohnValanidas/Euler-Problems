=begin
Euler problem for the sum of even fibonacci numbers to 4 million
=end

def sum_even_fibonacci max
  sum = 0
  num1 = 1
  num2 = 2
  while (num1 < max and num2 < max)
    if (num1 % 2 == 0)
      sum = sum + num1
    else if (num2 % 2 == 0)
      sum = sum + num2
    end
  end
    num1 = num1 + num2
    num2 = num1 + num2
  end
  sum
end

puts sum_even_fibonacci 4000000
