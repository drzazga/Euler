a, b, c, i = 7778742049, 12586269025, 12586269025, 2
while !(b.to_s[-9..-1].split("").sort.join() == "123456789" and b.to_s[0..8].split("").sort.join("") == "123456789")
  a, b = b, a+b
  i += 1
  p i
end
p i
