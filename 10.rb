require "mathn"

p (2..2000000).select() { |e| (2..Math.sqrt(e).floor).all? { |f| e % f != 0 } }.inject(:+)
