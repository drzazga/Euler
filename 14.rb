i, maxi, max, current = 1, 0
1.upto(1000000) do |n|
  i = 1  
  current = n
  while n != 1
    i += 1
    if n % 2 == 0
      n /= 2
    else
      n = 3*n + 1
    end 
  end
  if i > maxi
    maxi = i
    max = current
  end
end

p max
