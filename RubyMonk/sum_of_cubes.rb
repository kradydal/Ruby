def sum_of_cubes(a, b)
  sum = 0
  a.upto(b) { |n| sum += n**3 }
  sum
end

puts sum_of_cubes(1,3)
