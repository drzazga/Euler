a, i, j, b = 0, 1, 0, 0
 
cache = {} 
  
while i < 500  do
  i = 1
  a += j + 1 
  j += 1
  b = a

  (1..(a/2).ceil).each do |n| 
    if a % n == 0
      i += 1    
    end
    unless cache[a].nil?
      i += cache[a]
      break    
    end
  end

  cache[b] = i
  p i if i > 100
end
p b
p j 
