def factorial(n)
 a = 1
 if n == 0
   a = 1
 elsif n > 0
   n.times do |m|
    a = (m+1)*a
   end
 else
   a = 0
 end
  a
end

factorial(4)
