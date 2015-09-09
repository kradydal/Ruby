def name_shuffler(str)
  str.split(' ').reverse().join(' ')
end

puts name_shuffler("Michael Jordan")

def is_odd(n)
   (n.to_s)[-1].to_i.odd?
end

puts is_odd(12.5)
