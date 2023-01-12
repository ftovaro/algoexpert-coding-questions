const isValidSubsequence = require('./index');

test('test #1', () => {
  expect(isValidSubsequence([5, 1, 22, 25, 6, -1, 8, 10],
    [1, 6, -1, 10])).toEqual(true);
});

test('test #2', () => {
  expect(true).toEqual(true);
});