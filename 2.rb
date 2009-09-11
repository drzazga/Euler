a, b, c, sum = 1, 1, 0, 0
while c < 4000000
  a, b, c = b, a+b, a+b
  sum += c if c % 2 == 0
end
p sum
   
#fib = [1,2]
#fib << fib[-1] + fib[-2] while fib.last < 4_000_000
#fib.select(&:even?).inject(:+) # => 4613732 
