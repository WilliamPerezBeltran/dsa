let stack = [];

function push(element) {
  stack.push(element);
}

function pop() {
  stack.pop();
}

function isEmpty() {
  stack.length === 0;
}

function peek() {
  return stack[length - 1];
}

function size() {
  return stack.length;
}

module.exports = {
  push,
  pop,
  isEmpty,
  peek,
  size,
};
