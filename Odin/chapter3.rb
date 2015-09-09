#Ruby Programming - Chapter 3 exercises

# Comparison Operators and Expressions

age = 10
puts "You're too young to use this system" if age < 18

age = 24
puts "You're a teenager" if age > 12 && age < 20

age = 24
puts "You're NOT a teenager" unless age > 12 && age < 20

age = 24
puts "You're 24!" if age == 24

5.times do
  puts "Test"
end
