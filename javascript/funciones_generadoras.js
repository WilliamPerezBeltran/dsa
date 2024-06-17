
// https://juanmirod.github.io/2017/09/11/Generadores-JavaScript.html
/*
una funcion generadora (constructor GeneratorFunction) es un tipo 
especial de funcion que irve como una fábrica de iteradores. Cuando
se ejecuta, regresa un nuevo objecto Generador. Una función se 
covierte en un Función Gegeradora si utiliza la sintáxis function*.

	un generador es una función especial en javascript que puede pausar su 
ejecuión y retormarla en un punto arbitrario. Para definirlos utilizamos dos nuevas 
palabras reservadas del lenguaje:
	- function*
	- yield 

yield traduce ==> producir o ceder
*/

function* counterGenerator(){
	let i = 0
	while(true){
		yield i 
		i++
	}
}


let counter =  counterGenerator()


counter.next() // { value: 0, done: false }
counter.next() // { value: 1, done: false }
counter.next() // { value: 2, done: false }

console.log("============ new example ==============") 

function* counterGeneratorr(){
	let i = 0
	while(true){
		yield i 
		i++
	}
}

let counterr = counterGeneratorr()
console.log( counterr )
console.log( counterr.next() )

for(var c of counterr){
	console.log(c)
	if(c > 10) break
}

console.log("============ new example ==============") 

function* myGenerador(){
	let x = 0
	while(true){
		yield 2*x+1
		x++
	}
}

let elGenerador = myGenerador()
console.log( elGenerador.next())
let contador = 0
let limite = 10
for(item of elGenerador ){
	contador++
	console.log(item)
	if(contador == 10) break
}

console.log("============ new example ==============") 

function* myGe(){
	let x = 0
	while(true){
		yield 2*x+1
		x++
	}
}

let elGenera = myGe()
console.log( elGenera.next())
let contadorr = 0
 limite = 10
for(item of elGenerador ){
	contadorr++
	console.log(item)
	if(contadorr == 10) break
}

console.log("============ generadorOfOdds ==============") 
function* generadorOfOdds(){ // genera infinitos numeros impares 
	let i = 0
	while(true){
		yield 2*i+1
		i++
	}
}

var oddNumber = generadorOfOdds()// todos los numeros impares 

function take(limit,iter){
	for(number of iter){
		console.log(number)
		limit = limit - 1 
		if( limit <= 0 )break 	
	}
}

take(5,oddNumber) // toma 5 numeros impares 




console.log("============ generar un array de n numeros impares ==============") 




function* numerosImpares(){
	let x = 0
	while(true){
		yield (2*x)+1
		x++
	}
}

var iter = numerosImpares()
function taken(n,iterable){
	let array = []
	for(number of iterable){
		n--
		array.push(number)
		if(n <= 0)break
	}
	return array
}
let result = taken(5,iter)
console.log( result)

console.log("============ end ==============") 




















































