def isAnagram?(test, original)
  # sum1 = 0
  # sum2 = 0
  # a = test.downcase.gsub(/[^a-z0-9]/, '').each_byte { |letter| sum1 += letter}
  # b = original.downcase.gsub(/[^a-z0-9]/, '').each_byte { |letter| sum2 += letter}
  # sum1 == sum2
  test.downcase.gsub(/[^a-z0-9]/, '').chars.sort == original.downcase.gsub(/[^a-z0-9]/, '').chars.sort
end

puts isAnagram?("William Shakespeare","I am a weakish speller")
puts isAnagram?("Car","Cat")
