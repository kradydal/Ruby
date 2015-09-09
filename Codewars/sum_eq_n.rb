def sum_eq_n?(arr, n)
  pairs = arr.product(arr)
  arr == [] && n == 0 ? true : pairs.count {|a,b| a+b == n} > 0
end

puts sum_eq_n?([1,2,3,4],7)
puts sum_eq_n?([],0)
puts sum_eq_n?([1,2,3,4],18)
