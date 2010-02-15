letters = ('a'..'z').to_a
names = File.open("names.txt").gets.split(",").collect { |n| n[1..-2] }.flatten.sort!

p names.inject(0) { |sum, name| sum += (names.index(name) + 1) * name.downcase.split("").inject(0) { |sumka, l| sumka += letters.index(l)+1 ; sumka}; sum }

