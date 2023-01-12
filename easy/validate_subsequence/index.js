// O(n) T, O(1) S
function isValidSubsequence(array, sequence) {
  if (array === sequence) return true

  let total = 0
  let index2 = 0
  const length = sequence.length

  for (let index = 0; index < array.length; index++) {
    if (array[index] === sequence[index2]) {
      total += 1
      index2 += 1
    }
  }

  return total === length
}

// Do not edit the line below.
module.exports = isValidSubsequence;
