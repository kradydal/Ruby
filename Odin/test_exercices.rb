class Person
  def initialize(age)
    @age = age
  end

  def age=(new_age)
    @age = new_age
  end

  def age
    @age
  end
end

# andy = Person.new(42)
# puts andy.age
# puts andy.age=(33)
# puts andy.age

##########################


module MathHelper
  def multiply_by_two(arg)
    arg * 2
  end

  def exponent(a,b)
    a**b
  end
end

class Homework
  include MathHelper
end

class Calculator
  include MathHelper

  def square_root(arg)
    exponent(arg,0.5)
  end
end

# math = Homework.new
# puts math.multiply_by_two(9)
# c = Calculator.new
# puts c.square_root(4)
# puts c.square_root(6)

##########################

class BasballPlayer
  def initialize(hits,walks,at_bats)
    @hits = hits.to_f
    @walks = walks.to_f
    @at_bats = at_bats.to_f
  end

  def batting_avg
    @hits/@at_bats
  end

  def one_base_percentage
    (@hits + @walks)/@at_bats
  end
end

# andrew = BasballPlayer.new(34,22,80)
# puts andrew.batting_avg
# puts andrew.one_base_percentage

##########################

class Person2
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def full_name
    @first_name + " " + @last_name
  end
end

# grazka = Person2.new("grazynka","kowalska")
# puts grazka.first_name
# puts grazka.last_name
# puts grazka.full_name

##########################


