p (1..1000).inject { |sum, e| sum += e**e }.to_s[-10..-1].to_i 
