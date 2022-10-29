import greeting from "./greeting";

test('test', () => {
  expect(greeting()).toBe("This is test");
});