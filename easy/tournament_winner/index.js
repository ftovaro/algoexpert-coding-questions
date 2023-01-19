function tournamentWinner(competitions, results) {
  let scoreboard = {}
  let bestTeam = ''
  scoreboard[bestTeam] = 0
  for (let index = 0; index < competitions.length; index++) {
    let winner = ''
    let result = results[index]
    let comp1 = competitions[index][0]
    let comp2 = competitions[index][1]

    if (result === 1) {
      winner = comp1
    } else {
      winner = comp2
    }

    if (scoreboard[winner]) {
      scoreboard[winner] += 3
    } else {
      scoreboard[winner] = 3
    }

    if (scoreboard[winner] > scoreboard[bestTeam]) {
      bestTeam = winner
    }
  }
  return bestTeam;
}

module.exports = tournamentWinner