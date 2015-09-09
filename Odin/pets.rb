class Pet
  attr_accessor :name, :age, :gender, :color
end

class Cat < Pet
end

class Dog < Pet
  def bark
    puts "Woof!"
  end
end

class Snake < Pet
  attr_accessor :length
end

snake = Snake.new
snake.name = "Sammy"
snake.length = 500

lassie = Dog.new
lassie.name = "Lassie"
lassie.age = 20

dog = Dog.new
dog.bark

puts dog.class
puts 2.class

puts "This is a test".length
puts "This is a test".upcase

def dog_barking
  puts "Woof!"
end

dog_barking
