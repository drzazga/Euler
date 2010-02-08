sum = 0
1.upto(1000000) do |i|
  sum += i if i.to_s(2).reverse == i.to_s(2) and i.to_s().reverse == i.to_s()
end
p sum
