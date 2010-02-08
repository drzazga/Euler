require "mathn"

p 1.upto((2..20).inject(:*)) { |e| break e if (2..20).all? { |f| e % f == 0 } }
