p File.open("digits2").inject(0) { |sum, n| sum += n.to_i }.to_s[0..9].to_i
