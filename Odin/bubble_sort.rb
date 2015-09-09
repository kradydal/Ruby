def bubble_sort(array)
  counter = array.size - 1

  while counter > 0
    1.upto(counter) do |number|
      is_bigger(array, number)
    end
    counter -= 1
  end

  return array
end


def is_bigger(array, number)
  if array[number - 1] > array[number]
    array[number - 1], array[number] = array[number], array[number - 1]
  end
end


def bubble_sort_by(array)
  counter = array.size - 1

  while counter > 0
    1.upto(counter) do |number|
      if yield(array[number - 1], array[number]) < 0
        array[number - 1], array[number] = array[number], array[number - 1]
      end
    end
    counter -= 1
  end

  return array
end
