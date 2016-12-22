# num = 600851475143


def largest_prime_multiple num
  prime_array = []
  prime = 2;
  while num > 1
    if num%prime == 0
      prime_array.push(prime)
      num = num/prime
    end
    prime = next_prime(prime)
  end
  prime_array
end


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



puts largest_prime_multiple(600851475143)
