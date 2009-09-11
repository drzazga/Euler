(1...1000).select() { |elem| elem%3 == 0 || elem%5 == 0 }.inject(:+)

