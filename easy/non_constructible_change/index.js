// (nlog(n)) Time
// (1) Space

function nonConstructibleChange(coins) {
  coins.sort((a, b) => a - b)

  let change = 0

  for (let coin of coins) {
    if (change + 1 >= coin) {
      change += coin
    } else {
      return change + 1
    }
  }

  return change + 1;
}

// Do not edit the line below.
module.exports = nonConstructibleChange
