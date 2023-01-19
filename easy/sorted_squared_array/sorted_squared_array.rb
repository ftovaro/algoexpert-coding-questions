def sorted_squared_array(array)
  sol = []
  left_idx = 0
  right_idx = array.length - 1
  idx = array.length - 1

  while(left_idx <= right_idx)
    left = array[left_idx] ** 2
    right = array[right_idx] ** 2

    if(left > right)
      sol.prepend(left)
      left_idx += 1
    else
      sol.prepend(right)
      right_idx -= 1
    end
  end

  return sol
end

array = [-10, -5, 0, 5, 10]
assert = sorted_squared_array(array) == [0, 25, 25, 100, 100]
p "Test #1: " + assert.to_s

array = [1, 2, 3, 5, 6, 8, 9]
assert = sorted_squared_array(array) == [1, 4, 9, 25, 36, 64, 81]
p "Test #2: " + assert.to_s
