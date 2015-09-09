def geometric_sequence_sum(a, r, n)
  (a * (1- (r ** n)))/(1-r)
end

puts geometric_sequence_sum(2, 3, 5)
puts geometric_sequence_sum(1, -2, 10)
