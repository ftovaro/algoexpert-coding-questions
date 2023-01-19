// O(n) time
// O(n) space

function sortedSquaredArray(array) {
  const total = array.length - 1
  const newArr = new Array(array.length)

  let leftIdx = 0
  let rightIdx = total


  for (let index = total; index >= 0; index--) {
    let leftVal = array[leftIdx] ** 2
    let rightVal = array[rightIdx] ** 2

    if (leftVal > rightVal) {
      newArr[index] = leftVal
      leftIdx++
    } else {
      newArr[index] = rightVal
      rightIdx--
    }
  }
  return newArr;
}

// Do not edit the line below.
// exports.sortedSquaredArray = sortedSquaredArray;
module.exports = sortedSquaredArray;
