def square(x, n)
  array = []
  a = x
  if n > 0
    n.times do
      array << a
      a = a ** 2
    end
  end
array
end

puts square(2,5)
