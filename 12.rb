a, i, j = 0, 1, 0
 
while i < 500  do
  i = 1
  a += j + 1 
  j += 1
  (1..(a/2).ceil).each{ |n| i += 1 if a % n == 0 }
  p i if i > 100
end
p a
p j 
