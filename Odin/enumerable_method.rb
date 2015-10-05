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
    index = 0
    self.my_each do |i|
      yield(i, index)
      index += 1
    end
    self
  end

  def my_select
    result = []
    self.my_each {|i| result << i if yield(i)}
    result
  end

  def my_all?
    self.my_each {|i| return false unless yield(i)}
    true
  end

  def my_any?
    self.my_each {|i| return true if yield(i)}
    false
  end

  def my_none?
    self.my_each {|i| return false if yield(i)}
    true
  end

  def my_count
    result = 0
    if block_given?
      self.my_each {|i| result += 1 if yield(i)}
    else
      self.my_each {|i| result += 1}
    end
    result
  end
end

array = [1,4,6,4]
array2 = []

# puts array.my_each2 {|x| x}
# puts array.my_each {|x| x}
# puts array.my_each_with_index {|n, i| array[i] = n }
# puts array.my_select {|x| x.even? }
# puts array.my_all? {|x| x > 0 } #should be true
# puts array.my_all? {|x| x < 1 } #should be false
# puts array.my_any? {|x| x < 4} #should be true
# puts array.my_any? {|x| x < 0} #should be false
# puts array.my_none? {|x| x > 4} #should be false
# puts array.my_none? {|x| x < 0} #should be true
puts array2.my_count
puts array.count(4)
puts array.count {|x| x > 2}
