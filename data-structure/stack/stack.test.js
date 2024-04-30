const { push, pop, isEmpty, peek, size } = require("./stack.js");

describe("stack", () => {
  test("push onee element into the stack", () => {
    push(1);
    expect(size()).toBe(1);
  });

  test("push another element, total numbers of element must be 2 elements", () => {
    push(2);
    expect(size()).toBe(2);
  });

  test("push another element, total of numbers must be 3 ", () => {
    push(3);
    expect(size()).toBe(3);
  });

  test("pop element, total of numbers must be 2 ", () => {
    pop();
    expect(peek()).toBe(2);
  });

  test("peek element, must be 2 ", () => {
    expect(peek()).toBe(2);
  });

  test("test isEmpty function, must be false", () => {
    expect(isEmpty()).toBeFalsy();
  });

  test("test size function, must be false", () => {
    expect(size()).toBe(2);
  });
});
