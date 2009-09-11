fib = [1,1]
fib << fib[-1] + fib[-2] while fib.last.to_s.length != 1000
p fib.size
