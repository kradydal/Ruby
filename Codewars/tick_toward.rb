def tick_toward(start, target)
  result = [start]
  start_x,start_y = start[0],start[1]
  target_x,target_y = target[0],target[1]

  until start_x == target_x && start_y == target_y
    start_x += 1 if start_x < target_x
    start_y += 1 if start_y < target_y
    start_x -= 1 if start_x > target_x
    start_y -= 1 if start_y > target_y
    result << [start_x, start_y]
  end

  result
end

puts tick_toward([5,5],[5,7])
