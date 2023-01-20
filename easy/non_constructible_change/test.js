const nonConstructibleChange = require('./index');

test('test #1', () => {
  expect(nonConstructibleChange([5, 7, 1, 1, 2, 3, 22])).toEqual(20);
});

test('test #2', () => {
  expect(nonConstructibleChange([1, 1, 1, 1, 1])).toEqual(6);
});
