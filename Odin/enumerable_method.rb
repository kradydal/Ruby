module Enumerable
  def my_each
    i = 0
    while i < self.size
      yield(self[i])
      i += 1
    end
    self
  end

  def my_each2
    return self unless block_given?
    for i in self
      yield(i)
    end
  end

  def my_each_with_index
    return self unless block_given?
    index = 0
    self.my_each do |element|
      yield(element, index)
      index += 1
    end
    self
  end

  def my_select
    result = []
    self.my_each {|element| result << element if yield(element)}
    result
  end
end

array = [1,4,6]

puts array.my_each2 {|x| x}
puts array.my_each {|x| x}
puts array.my_each_with_index {|n, i| array[i] = n }
