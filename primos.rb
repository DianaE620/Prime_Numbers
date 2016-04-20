def prime?(num)

return false if num == 1
primo = true
  for i in 2...num
    if num % i == 0
      return false
    end
  end 
primo
end

p prime?(4)
p prime?(5)
p prime?(17)


def prime_factors(num)
  array_primes = []
  primo = 1
  num = num

  loop do
    primo += 1
    next if !prime?(primo)
    
    if num % primo == 0
      array_primes << primo
      num = num / primo
      primo -= 1
    end
    
    break if num == 1
  end
array_primes

end

p prime_factors(4)  #=> [2, 2]
p prime_factors(9)  #=> [3, 3]
p prime_factors(12) #=> [2, 2, 3]
p prime_factors(34) #=> [2, 17]
p prime_factors(6936)
p prime_factors(5)
p prime_factors(17)
p prime_factors(100)






