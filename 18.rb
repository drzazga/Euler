def sumuj(pos, line, sum)
  if line == @triangle.size-1
    @sums << sum + @triangle[line][pos]
  else
    sumuj(pos+1, line+1, sum+@triangle[line][pos])
    sumuj(pos, line+1, sum+@triangle[line][pos])
  end
  
end

@triangle = []
@sums = []

File.open("digits4") do |file|
  while(line = file.gets)
    @triangle << line.split(" ").to_a.collect { |x| x.to_i }
  end
end

sumuj(0, 0, 0)

p @sums.uniq.max
