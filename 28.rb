@size = 101
@b_l = 4
@b_r = 2
@t_l = 6
@t_r = 8
a,b,c,d = 1, 1, 1, 1

@sum = 1


((1001/2).ceil).times do
  a = a + @b_r
  b = b + @b_l
  c = c + @t_l
  d = d + @t_r
  
  @b_l += 8
  @b_r += 8
  @t_l += 8
  @t_r += 8

  @sum += a + b + c + d 
end 

p @sum
