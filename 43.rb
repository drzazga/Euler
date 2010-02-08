Combo = %w(0 1 2 3 4 5 6 7 8 9).permutation
pandigitals = []
loop do
  e = Combo.next
  next if e.first == '0'
  STDOUT.print "#{e}\r"
  STDOUT.flush
  pandigitals << e.join if (e[1]+e[2]+e[3]).to_i % 2 == 0 &&
    (e[2]+e[3]+e[4]).to_i % 3 == 0 &&
    (e[3]+e[4]+e[5]).to_i % 5 == 0 &&
    (e[4]+e[5]+e[6]).to_i % 7 == 0 &&
    (e[5]+e[6]+e[7]).to_i % 11 == 0 &&
    (e[6]+e[7]+e[8]).to_i % 13 == 0 &&
    (e[7]+e[8]+e[9]).to_i % 17 == 0
end
puts " "
p pandigitals
puts pandigitals.map(&:to_i).inject(:+) 
