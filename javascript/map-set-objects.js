//  https://www.digitalocean.com/community/tutorials/understanding-map-and-set-objects-in-javascript

console.log("========================= Map =========================");

var map = new Map();
console.log(map); // Map(0) {}

map.set("firstName", "paul");
map.set("lastName", "graham");
map.set("occupation", "blabla");
console.log(map); // Map(0) {}

//Map(3) {
//  'firstName' => 'paul',
//  'lastName' => 'graham',
//  'occupation' => 'blabla'
//}

// another way to initialize a Map

a = [
  ["key1", "value1"],
  ["key2", "value2"],
  ["key3", "value3"],
  ["key4", "value4"],
  ["key5", "value5"],
];

map = new Map([
  ["key1", "value1"],
  ["key2", "value2"],
  ["key3", "value3"],
  ["key4", "value4"],
  ["key5", "value5"],
]);

console.log(map); //
//Map(5) {
//  'key1' => 'value1',
//  'key2' => 'value2',
//  'key3' => 'value3',
//  'key4' => 'value4',
//  'key5' => 'value5'
//}

//value = new Map(["name","appellido","age"])

//console.log(value) //

luke = {
  firstName: "Luke",
  lastName: "Skywalker",
  occupation: "Jedi Knight",
};
Object.entries(luke);
//[
//  [ 'firstName', 'Luke' ],
//  [ 'lastName', 'Skywalker' ],
//  [ 'occupation', 'Jedi Knight' ]
//]

//Map(5) {
console.log(map); //
console.log(Object.entries(luke));

var result = new Map(Object.entries(luke));
console.log(result);

console.log("=================new map  ================");

//initialize a map
var myMap = new Map([
  ["key1", "value1"],
  ["key2", "value2"],
  ["key3", "value3"],
]);
console.log(myMap);
console.log(
  "=================propiedades delete(), has(), get(), size() ================",
);

// check if a key exist in a Map
console.log(myMap.has("key1"));
console.log(myMap.has("key100"));

// check if a key exist in a Map
myMap.delete("key3"); // true

// check if a key exist in a Map
myMap.get("key2"); // true

// check if a key exist in a Map
console.log(myMap);
console.log(myMap.size);

myMap.clear();
console.log(myMap);
