# O(n) T, O(1) S
def isValidSubsequence(array, sequence)
  idx2 = 0
  array.each_with_index do |num, idx|
    idx2 += 1 if num == sequence[idx2]
    break if idx2 >= sequence.length
  end

  idx2 == sequence.length
end

array = [5, 1, 22, 25, 6, -1, 8, 10]
sequence = [1, 6, -1, 10]
p isValidSubsequence(array, sequence) == true

array = [5, 1, 22, 25, 6, -1, 8, 10]
sequence = [5, 1, 22, 25, 6, -1, 8, 10]
p isValidSubsequence(array, sequence) == true

array = [5, 1, 22, 25, 6, -1, 8, 10]
sequence = [1, 6, -1, -1]
p isValidSubsequence(array, sequence) == false