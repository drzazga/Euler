p (2**1000).to_s.split("").inject(0) { |sum, elem| sum += elem.to_i }
