t = []
(2..100).each { |e| (2..100).each { |f| t << e**f } }
p t.uniq!.size

#p (2..100).collect {|a|  (2..100).collect {|b|  a**b  }}.flatten.uniq.size
