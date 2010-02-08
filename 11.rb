tab = []

File.open("digits3") do |file|
  while(line = file.gets)
    tab << line.split(" ").collect { |x| x.to_i }.to_a
  end
end

i, j, max = 0, 0, 0

while i < 20
  while j < 20
    
    #pion
    if i < 17
      if max < tab[i][j]*tab[i+1][j]*tab[i+2][j]*tab[i+3][j]
        max = tab[i][j]*tab[i+1][j]*tab[i+2][j]*tab[i+3][j]
      end    
    end
    
    #poziom
    if j < 17
      if max < tab[i][j]*tab[i][j+1]*tab[i][j+2]*tab[i][j+3]
        max = tab[i][j]*tab[i][j+1]*tab[i][j+2]*tab[i][j+3]
      end
    end

    #skos prawo
    if j < 17 and i < 17 
      if max < tab[i][j]*tab[i+1][j+1]*tab[i+2][j+2]*tab[i+3][j+3]
        max = tab[i][j]*tab[i+1][j+1]*tab[i+2][j+2]*tab[i+3][j+3]
      end
    end

    #skos lewo
    if j > 2 and i < 17
      if max < tab[i][j]*tab[i+1][j-1]*tab[i+2][j-2]*tab[i+3][j-3]
        max = tab[i][j]*tab[i+1][j-1]*tab[i+2][j-2]*tab[i+3][j-3]
      end
    end
    j += 1
  end
  j = 0
  i += 1
end

p max
