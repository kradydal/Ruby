module Enumerable
  def my_each
    i = 0
    while i < self.size
      yield(self[i])
      i += 1
    end
    self
  end
end

puts [1,2,3].my_each {|x| x}
