poli = []
(100..999).each() { |e| (100..999).each() { |f| poli << e*f if (e*f).to_s.split("") == (e*f).to_s.split("").reverse }  }
puts poli.max
