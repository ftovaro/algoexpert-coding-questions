
# O(n) T, O(n) S
# def two_number_sum(array, target_sum)
#   mapp = {}
#   complement = 0

#   array.each do |el|
#     complement = target_sum - el
#     if mapp[complement]
#       return [el, complement]
#     elsif 
#       mapp[el] = true
#     end
#   end
  
#   return []
# end

# O(nlog(n)) T, O(1) S
def two_number_sum(array, target_sum)
  left = 0
  right = array.length - 1

  array.sort

  while(left < right)
    complement = array[left] + array[right]
    if (complement == target_sum)
      return [array[left], array[right]]
    elsif complement < target_sum
      left += 1
    else
      right -= 1
    end
  end

  return []
end



a = [3, 5, -4, 8, 11, 1, -1, 6]
b = two_number_sum([3, 5, -4, 8, 11, 1, -1, 6], 10)
p b
p b - a == [] ? "correct" : "wrong"
