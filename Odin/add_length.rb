def add_length(str)
  new_str = str.split(' ')
  output = []
  new_str.each do |element|
    new_word = "#{element} #{element.length}"
    output << new_word
  end
  return output
end

puts add_length("Kasia i Ania")
