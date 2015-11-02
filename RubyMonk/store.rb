class Stack
  def initialize(size)
    @size = size
    @store = Array.new(@size)
    @top = -1
  end

  def pop
    if empty?
      nil
    else
      popped = @store[@top]
      @store[@top] = nil
      @top = @top.pred
      popped
    end
  end

  def push(element)
    if full? or element.nil?
      nil
    else
      @top = @top.succ
      @store[@top] = element
      self
    end
  end

  def size
    @size
  end

  def look
    @store[@top]
  end

  private

  def full?
    @top == (@size - 1)
  end

  def empty?
    @top == -1
  end
end

#  The Stack class maintains an unbound @store array and simply calls pop and push on them.
#  size returns the length of the array.

# Modify the above example to make the Stack class statically sized.
# push and pop should return nil if the stack is overflowing or underflowing respectively.
# Implement private predicate methods full? and empty? and public method size
# that returns the length of the stack, and look that returns the value on the top of the stack.

class Queue
  def initialize(size)
    @size = size
    @store = Array.new(@size)
    @head, @tail = -1, 0
  end

  def dequeue
    if empty?
      nil
    else
      @tail = @tail.succ

      dequeued = @store[@head]
      @store.unshift(nil)
      @store.pop
      dequeued
    end
  end

  def enqueue(element)
    if full? or element.nil?
      nil
    else
      @tail = @tail.pred
      @store[@tail] = element
      self
    end
  end

  def size
    @size
  end

  private

  def empty?
    @head == -1 and @tail == 0
  end

  def full?
    @tail.abs == (@size)
  end
end
