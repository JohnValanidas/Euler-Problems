=begin
Sum of the Miltiples of 3 and 5 to 1000 but disclude combinations of 3 and 5.
=end



def mulltiples_three_five cap
  total = sum_till(3,cap) + sum_till(5,cap) - sum_till(15,cap)
  puts total
end


def sum_till (multiple, cap)
  total = 0
  num = 0
  while (num < cap)
    total = total + num
    num = num + multiple
  end
  total
end

puts mulltiples_three_five(1000)
