const sortedSquaredArray = require('./index');

test('test #1', () => {
  expect(sortedSquaredArray([-10, -5, 0, 5, 10])).toEqual(
    expect.arrayContaining([0, 25, 25, 100, 100]));
});

test('test #2', () => {
  expect(sortedSquaredArray([1, 2, 3, 5, 6, 8, 9])).toEqual(
    expect.arrayContaining([1, 4, 9, 25, 36, 64, 81]));
});
