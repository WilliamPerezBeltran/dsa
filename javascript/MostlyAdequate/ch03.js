console.log("================== pure functions ==================")

console.log("==== impure ====")
//impure
var minimum = 21
var checkAge = function(age){
return age >= minimum
}

console.log( checkAge(1))
console.log( checkAge(2))
console.log( checkAge(3))
console.log( checkAge(12))
console.log( checkAge(23))
console.log( checkAge(100))
console.log( checkAge(48))
console.log( checkAge(25))



console.log("==== pure ====")
//pure
var checkAge = function(age){
	var minimum = 21
	return age >= minimum
}
console.log( checkAge(1))
console.log( checkAge(2))
console.log( checkAge(3))
console.log( checkAge(12))
console.log( checkAge(23))
console.log( checkAge(100))
console.log( checkAge(48))
console.log( checkAge(25))

console.log("==== super pure ====")
//the best solution to pure function
var checkAge = function(age){
	let immutableState = Object.freeze({minimum:21})
	return age >= immutableState.minimum
}
console.log( checkAge(1))
console.log( checkAge(2))
console.log( checkAge(3))
console.log( checkAge(12))
console.log( checkAge(23))
console.log( checkAge(100))
console.log( checkAge(48))
console.log( checkAge(25))

console.log("================== side effects  ==================")

/*

A side effect is a change os system state or observable interaction with the outside 
world that occurs during the calculation of a result.
side effect = efectos secundarios
Es todo cambio de estado del sistema después de un calculo, cualquiera que sea.
por ejemplo:
	- Cuando se llama a la Db
	- Cuando se inserta datos a la Db
	- Mutaciones
	- Querying the Dom 
	- Consultando el dom
	- etc

f: X -> Y

f: input -> output

y = f(x) -> donde "y" is the output and "x" is the input, 
		the transformation is f() 
		donde f es la correspondencia 

f: input -> output

*/
/*
 * this is a different way to think about functions 
  */
const toLowerCase = {
	A:"a",
	B:"b",
	C:"c",
	D:"d",
	E:"e",
	G:"g"
}
console.log(toLowerCase["A"])

const isPrime = {
  1: false,
  2: true,
  3: true,
  4: false,
  5: true,
  6: false,
};
console.log(isPrime["1"])

console.log(" Pure functions are mathematical funcions ")
console.log(" Pure functions are mathematical funcions ")
console.log(" Pure functions are mathematical funcions ")
console.log(" Cuando una funcion es pura cumple la definicion estricta de funciones en matematicas ")

console.log("================== the case for purity ==================")
const squareNumber = (x => x * x)
console.log(squareNumber(4))
console.log(squareNumber(4))
console.log(squareNumber(5))
console.log(squareNumber(5))

console.log("======")

const memoize = (f)=>{
	const cache = {}
	return (...args)=>{
		const argStr = JSON.stringify(args)
		cache[argStr] = cache[argStr] || f(...args)
		return cache[argStr]
	}
}
const squareNumber_ = memoize(x => x * x)

console.log(squareNumber_(4))
console.log(squareNumber_(4))
console.log(squareNumber_(5))
console.log(squareNumber_(5))
console.log("================== pure functions ==================")
console.log("================== pure functions ==================")
console.log("================== pure functions ==================")
console.log("================== pure functions ==================")










































