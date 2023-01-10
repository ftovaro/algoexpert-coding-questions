function twoNumberSum(array, targetSum) {
  let res = []
  for (let index = 0; index < array.length; index++) {
    for (let index2 = index + 1; index2 < array.length; index2++) {
      let sum = array[index] + array[index2];
      if (sum === targetSum) {
        res.push(array[index])
        res.push(array[index2])
      }
    }
  }
  return res;
}

// Do not edit the line below.
module.exports = twoNumberSum;
