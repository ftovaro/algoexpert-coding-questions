const twoNumberSum = require('./index');

test('test #1', () => {
  expect(true).toEqual(true);
});

test('test #2', () => {
  expect(twoNumberSum([3, 5, -4, 8, 11, 1, -1, 6], 10)).toEqual(
    expect.arrayContaining([-1, 11]));
});