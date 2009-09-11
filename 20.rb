p (1..100).inject() { |iloczyn, e| iloczyn *= e }.to_s.split("").inject(0) { |sum, e| sum += e.to_i }
