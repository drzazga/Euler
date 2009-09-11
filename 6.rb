p (1..100).inject(:+)**2 - (1..100).collect { |e| e**2 }.inject(:+)
