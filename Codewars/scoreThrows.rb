def scoreThrows(radiuses)
  result = 0
  under_five = 0
  radiuses.each do |x|
    if x < 5
      result += 10
      under_five += 1
    elsif x <= 10 && x >= 5
      result += 5
    end
  end
  if under_five == radiuses.size && radiuses.size > 0
   result += 100
  end
  result
end

puts scoreThrows([1, 5, 11])

# You've just recently been hired to calculate scores for a Dart Board game!
