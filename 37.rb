require 'mathn'

@primes = [2, 3, 5, 7]

def correct(l)
  len = l.to_s().length
  return false if l < 10
  0.upto(len-1) do |j|
    return false unless @primes.include?(l.to_s()[j..len-1].to_i) and @primes.include?(l.to_s()[0..len-j-1].to_i)     
  end
  true
end

prime = Prime.new

i, found, sum = 0, 0, 0

while found < 11
  i = prime.next
  @primes << i
  if correct(i)
    found += 1
    sum += i
  end
end

p sum
