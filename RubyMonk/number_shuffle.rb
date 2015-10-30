# def number_shuffle(number)
#   no_of_combinations = 1
#   number.to_s.split('').each {|n| no_of_combinations *= n.to_i }
#   digits = number.to_s.split(//)
#   combinations = []
#   combinations << digits.shuffle.join.to_i while combinations.uniq.size!=no_of_combinations
#   combinations.uniq.sort
# end

# puts number_shuffle(123)

def number_shuffle_2(number)
  no_of_comb = 1
  number.to_s.split('').each {|n| no_of_comb *= n.to_i }
  array = number.to_s.split('')
  result = []
  until result.uniq.size == no_of_comb
    result << array.shuffle.join.to_i
  end
  result.uniq.sort
end

puts number_shuffle_2(123)
