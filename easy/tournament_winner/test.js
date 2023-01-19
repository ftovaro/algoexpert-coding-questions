const tournamentWinner = require('./index');

test('test #1', () => {
  const test = {
    "competitions": [
      ["HTML", "C#"],
      ["C#", "Python"],
      ["Python", "HTML"]
    ],
    "results": [0, 0, 1]
  }
  expect(tournamentWinner(test.competitions, test.results)).toEqual('Python');
});

test('test #2', () => {
  const test = {
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
  expect(tournamentWinner(test.competitions, test.results)).toEqual('C#');
});
