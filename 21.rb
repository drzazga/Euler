def d(n)
  (1..(n/2)).inject(0) { |sum, i| sum += i if n % i == 0; sum }
end

p 1.upto(10000).to_a.inject(0) { |sum, n| sum += n if n == d(d(n)) and n != d(n); sum }
