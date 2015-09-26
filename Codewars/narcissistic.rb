# A Narcissistic Number is a number which is the sum of its own digits, each raised to the power of the number of digits.

def narcissistic?( value )
  a = value.to_s
  result = 0
  a.each_char { |x| result += x.to_i**a.size}
  result == value ? true : false
end

puts narcissistic?(5)
puts narcissistic?(153)
puts narcissistic?(24)
