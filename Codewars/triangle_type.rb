def triangle_type(a,b,c)
  array = [a,b,c].sort
  if a + b > c && a + c > b && b + c > a
    if array[0]**2 + array[1]**2 == array[2]**2
      "Right"
    elsif a**2 + b**2 > c**2 && a**2 + c**2 > b**2 && b**2 + c**2 > a**2
      "Acute"
    else
      "Obtuse"
    end
  else
    "Not triangle"
  end
end

puts triangle_type(2,7,5)
puts triangle_type(3,4,5)
puts triangle_type(8,5,7)
puts triangle_type(7,12,8)
