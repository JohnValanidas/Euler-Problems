# reused code from Problem 3
def next_prime prime
  not_found = true
  while not_found
    prime = prime + 1
    if prime_checker(prime)
      not_found = false
    end
  end
  prime
end

def prime_checker num
  divsor = 2
  while (divsor < num/2)
    if num%divsor == 0
      return false
    end
    divsor = divsor + 1
  end
  return true
end

def prime till
  index = 0
  array = [2]
  num = 2;
  while index < till
    num = next_prime(num)
    array = array.push(num)
    index = index + 1;
  end
  array
end


puts prime(10001)
