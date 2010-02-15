a, i, j, b = 0, 1, 0, 0
 
cache = {} 
aktualne_dzielniki = []
  
while i < 500  do
  aktualne_dzielniki = []
  a += j + 1 
  j += 1

  (a/2).ceil.downto(1).each do |n| 
    unless aktualne_dzielniki.include?(n)
      if a % n == 0
        aktualne_dzielniki << n
        unless cache[a % n].nil?
          aktualne_dzielniki << cache[a % n]
          aktualne_dzielniki.flattern.uniq
        end
      end
    end
  end

  cache[a] = aktualne_dzielniki
  i = aktualne_dzielniki.size
  if i > 100
    p i
  end
end
p cache
p a
p j 
