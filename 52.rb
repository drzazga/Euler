def same_digit?(t)
  len = t[0].to_s.length
  return false if t.any?() { |e| e.to_s.length != len }
  digits = t[0].to_s.split("").sort
  return false if t.any?() { |e| e.to_s.split("").sort != digits }
  true
end

i = 0
while true
  i += 1
  break if same_digit?([i, i*2, i*3, i*4, i*5, i*6])  
end

p i



#x = 10000
#loop do
#break if [x,2*x,3*x,4*x,5*x,6*x].collect{|i| i.to_s.split('').sort}.uniq.size == 1
#x += 1
#end
#p x 
