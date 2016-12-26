def palindrome? string
  index = 0
  while index < string.length/2
    if string[index] != string[string.length - index -1]
      return false
    end
    index = index + 1
  end
  true
end


def palindrome_product
  product_array = []
  num1 = 999
  num2 = 999
  while num1 > 800
    num2 = 999
    while num2 > 800 # just guessing the range with 800. could optimize by makeing
                     # it smaller
      if palindrome? (num1*num2).to_s
        product_array.push(num1*num2)
      end
      num2 = num2 - 1
    end
    num1 = num1 - 1
  end
  product_array.sort[product_array.length - 1 ]
end


#console printing of largest palindrome product
puts palindrome_product
