def solutions(pairs)
  result = ""
  pairs.each do |key,value|
    result << "#{key} = #{value},"
  end
  result[0...-1]
end



def solutions2(pairs)
  pairs.map {|key,value| "#{key} = #{value}"}.join(',')
end

puts solutions2({a: 1, b: '2'})

# from {a: 1, b: '2'} should get result 'a = 1,b = 2' (solutions and solutions 2)


# 2 Complete the solution so that it returns true if the first argument(string) passed in ends with the 2nd argument (also a string).

def solution3(str, ending)
  str[-ending.count..-1] == ending
end
