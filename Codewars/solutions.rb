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

