def tournament_winner(competitions, results)
  scoreboard = {}
  bestTeam = ''
  scoreboard[bestTeam] = 0

  competitions.each_with_index do |teams, i|
    comp1 = teams[0]
    comp2 = teams[1]
    result = results[i]

    winner = result == 1 ? comp1 : comp2
    scoreboard[winner] ? scoreboard[winner] += 3 : scoreboard[winner] = 3
    bestTeam = winner if scoreboard[winner] > scoreboard[bestTeam]
  end

  return bestTeam
end


test = {
  "competitions": [
    ["HTML", "C#"],
    ["C#", "Python"],
    ["Python", "HTML"]
  ],
  "results": [0, 0, 1]
}

res = tournament_winner(test[:competitions], test[:results]) == "Python"
p "Test#1: #{res}"

test = {
    "competitions": [
      ["HTML", "Java"],
      ["Java", "Python"],
      ["Python", "HTML"],
      ["C#", "Python"],
      ["Java", "C#"],
      ["C#", "HTML"],
      ["SQL", "C#"],
      ["HTML", "SQL"],
      ["SQL", "Python"],
      ["SQL", "Java"]
    ],
    "results": [0, 1, 1, 1, 0, 1, 0, 1, 1, 0]
  }

res = tournament_winner(test[:competitions], test[:results]) == "C#"
p "Test#2: #{res}"