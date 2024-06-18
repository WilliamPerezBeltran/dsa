console.log("====================== rest syntax ======================");


//  1. receiving data: rest syntax

function myFunc(first, ...remaining) {
  return { first, remaining };
}
console.log(myFunc(1, 2, 3, 4, 5, 6, 7)); // 	{ first: 1, remaining: [ 2, 3, 4, 5, 6, 7 ] }

const [head, ...tail] = ["a", "b", "c"];
console.log(head); // "a"
console.log(tail); // ["b","c"]

// we can use it in object-destructuring:
const { first: f, ...remaining } = { first: "Jane", last: "Doe", age: 43 };

console.log(f); // "a"
console.log(remaining); // "a"
const { ...rema } = {
  first: "Jane",
  last: "Doe",
  age: 43,
  name: "wallo",
  age_: 23,
  ae_: 23,
  ge_: 23,
};
console.log(rema); // "a"



//  2. Sending data: spreading 

function returnArgArray(...args){
	return args
}

console.log( returnArgArray(1,2,3,4,5,6) )
console.log( returnArgArray([...["a","b"],"c"]) )
console.log( returnArgArray({...{a:1, b:2}, c:3}) )
console.log( returnArgArray([["a","b"],"c"]) )
