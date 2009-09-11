require 'mathn'

prime = Prime.new
a, b = 1, 600851475143

while b > 1
  a = prime.next
  b = b / a if b % a == 0
end

p a

#require 'prime'
#600851475143.prime_division.max.first # => 6857 
