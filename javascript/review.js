//		https://es.javascript.info/async
console.log("again")

console.log("======================== datos primitivos  ========================")

/*
						datos primitivos 
Boolean 
null 
undefined 
Number
BigInt 
String
Symbol 
Object
Function 

						datos primitivos 
Boolean   ==> variables que pueden contener un valor de verdadero o falso 
let isTrue = true
let isFalsy = false

null      ==> Representa la ausencia intencional de cualquier valor 
let valorNullo = null

undefined ==> cuando la variable no ha sido inicializada 
let sinValor = undefined

Number    ==> enteros o dcimales 
let number = 500

BigInt    ==> Es un tipo para almacenar numeros grandes mas alla del tamñao de Number
let enteroGrande = 1234567890123456789012345678901234567890n;

String    ==>  para la cadenas de texto "soy una cadena"
let myString = "my string"

Symbol    ==> Representa un valor único y anónimo , útil para identificar
							propiedades de objectos de manera única.
let simbolo = Symbol("descriptcion")

Object    ==> Coleccion de proiedades y métodos 

let objecto = {
	"nombre": "will",
	"age": 23
}
*/


console.log("======================== funciones  ========================")

function nombreDeLaFunction(){
	//código a ejecutar
}

function saludar(){
	console.log("hola")
}


let nombreDeLafuncion = function saludar(){
	console.log("hola")
}
nombreDeLafuncion() 

let nombre = ()=>{
	console.log("hola arrow function")
}

nombre()


/*
FUNCIONES COMO OBJECTOS
En javascript, las funciones on objectos de primera clase, lo que significa
que puede ser:
* Asignadas a variables 
* Pasadas como argumentos a otros funciones. 
* Devueltas por otras funciones 

PROPIEDADES Y METODOS DE LAS FUNCIONES 
Las funciones en javascript tienen algunas propiedades y metodos utilicomo como:

- name: devuelve el nombre de la funcion

- length: devuelve el numero de argumentos que espera la funcion

- call(): llama a una funcion con un contexto "this" específico 
					y argumentos individualmente

- apply(): llama a una función con un contexto "this" específico 
					y agumentos como un array 

- bind(): crea una fucnión que, cuando es llamda, tiene su "this" 
					fijado al valor proporcionado 
*/



console.log("======================== declaracion de variables  ========================")

/*
 
primero que todo vamos a definir un tema importante en este conexto, la definicion de 
hoisting 

¿ qué es hoisting ?
	Hoisting es un termino para describir que las declaracions de variables y funciones
  son de desplazadas a la parte superior del scope mas cercano, scope global o de funcion.
	Esto sucede asolamente con las declaraciones y no con las asignaciones. 
	El código permanece igual. 
	Solo es una interpretación del motor de javascript

tipos de variables en javascript 
* var 
* let 
* const 

1. "var"
	* tiene alcance de funcion o global, dependiendo de donde se declare.
	* Puede ser redeclarada y reasignada.
	* Soporta "hoisting", lo que significa que puede ser utilizada antes de su declaración.

*/	
	var x = 10
 	if(true){
		var x = 20  //misma variable	
	}
	console.log(x) // x => 20

/*

2. "let"
	* Tiene alcance de bloque, es decir solo es accesible dentro del bloque donde se declara
	* Puede ser reasignada pero no redeclarada en el mismo ámbito 
	* No soporto hoisting de la misma manera que var
	
	*/
	let xx = 10
	if(true){
		let xx = 20 //variable diferente	
		console.log(xx) // xx => 20
	}
	console.log(xx) // xx =>10
	
/*
3. "const"
	* Tiene alcance de bloque, es decir solo es accesible dentro del bloque donde se declara 
	* Debe ser inicializada al momento de su declaración y no puede ser reasingnada.
	* Las propiedades de objetos y elementos de arrays declaradso con "const" pueden ser 
		modificadso, pero la referencia no puede cambiar.

*/
	
	const z = 10
	// z = 20 Error: assignment to consta variable.
	const obj = {a:1}
	obj.a = 2 //valido
	console.log(obj.a) // 2 


/*

																					RESUME



							alcance							acciones 											hoisting				ejemplo		

var				funcion o global		redeclarada y reasignada						Si      			var x = 10
																																			   				if(true){
     																																							var x = 20  //misma variable  
   																																							}
   																																							console.log(x) // x => 20
 

let				bloque							reasignada													No      			let x = 10
																																			   				if(true){
     																																							let x = 20  //diferente variable  
   																																							}
   																																							console.log(x) // x => 10
 

const				bloque		      		inicializada para declararse				No      			const x = 10
																																			   				if(true){
     																																							// const x = 20  //generaria error   
   																																							}
   																																							console.log(x) // x => 10 


*/


//	https://es.javascript.info/async

console.log("======================== callback  ========================")
/*

Un callback es una funcion que se proporciona como argumento a otra funcion,
permitiendo que se invoque posteriormente en un contexto determinado, generalmente
tras la finalización de una operación asincronas.
Los callbacks permiten que el flujo de ejecuón continúe mientras se esperan los resultados
de procesos como operaciones de I/O, temporizadores, oeventos del usuario,
proporcionando un mecanismo para gestionar la asincronía y la modularidad del
código en entornos de programción envent-driven, como javascript

*/

function something(myCallback){
	console.log("entra a something 111111")
	myCallback()
}

function myCallback(){
	console.log("mycallback")
}
 
something(myCallback)

//It is the most basic definition of what a callback is 

	console.log("")
	console.log("")

let somet = (param,myCall)=>{
	console.log("entro a somet")
	console.log(`${param}`)
	myCall()

}

let myCall = ()=>{
	console.log("myCall")
}

 somet("hola hsoy un parametro",myCall)


console.log("")
console.log("")

// Callback anonimo 

doingSomething = function(){
    console.log("Callback anónimo ejecutado!");
}

doingSomething()



doingS = ()=>{console.log("doingS arrow function")}
doingS() 




doingSs = ()=>console.log("doingSs arrow function")
doingSs() 



//Ejemplo práctico
function obtenerDatos(callback){
		const datos = {name:"paul graham", age:51}
		callback(datos)
}

function datos(datos){
	console.log(`get data ${datos}`)
}


obtenerDatos(datos)

function dato(data){
	console.log(`datos obtenidos: ${data}`)
}

console.log("")
console.log("")

/*
 
Boolean 
null 
undefined 
Number
BigInt 
String
Symbol 
Object
Function 

	*/

let isTrue = true
let valorNullo = null
let sinValor = undefined
let number = 500
let enteroGrande = 1234567890123456789012345678901234567890n;
let myString = "my string"
let simbolo = Symbol("descriptcion")
let objecto = {
	"nombre": "will",
	"age": 23
}

console.log(typeof isTrue)
console.log(typeof  valorNullo)
console.log(typeof sinValor)
console.log(typeof number)
console.log(typeof enteroGrande)
console.log(typeof myString)
console.log(typeof simbolo)
console.log(typeof objecto)

function myDatos(data){
	console.log(Object.prototype.toString.call(data))
	//let tipo =  Object.prototype.toString.call(data) == "[object Array]"
	let tipo = Object.prototype.toString.call(data) 
	switch (tipo) {
  	case "[object Array]":
			for (const item in data){
				console.log(item)	
			}
    	break;
  	case "[object Object]":
			for (const property in data){
				console.log(`${property} ${data[property]}`)	
			}
    	break;
  	default:
    console.log("Lo lamentamos, por el momento no disponemos de " + tipo + ".");
	}
}


myDatos([1,2,3,4,5,6,7,8,9])
myObj = new Object()
myObj.type = "Sintaxis de puntos";
myObj["fecha de creación"] = "Cadena con espacios";
myObj["str"] = "Valor de cadena";
myObj["rand"] = "Número aleatorio";
myObj["obj"] = "Object";
myObj[""] = "Incluso una cadena vacía";


myDatos(true)
myDatos(null)
myDatos(undefined)
myDatos("string")
myDatos({})
myDatos(simbolo)
myDatos(myObj)

/*
Object.prototype.toString.call(data) 
		expected value 
[object Boolean]
[object Null]
[object Undefined]
[object String]
[object Object]
[object Symbol]

*/


console.log("======================== handle HTTP request   ========================")

//		https://www.freecodecamp.org/news/here-is-the-most-popular-ways-to-make-an-http-request-in-javascript-954ce8c95aaa/

// npm install xhr2

//		1. usen XMLHttpRequest()
// npm install xhr2
var XMLHttpRequest = require('xhr2');
const Http = new XMLHttpRequest()
const url = "https://jsonplaceholder.typicode.com/posts"
Http.open("GET",url)
Http.send()
Http.onreadystatechange = ()=>{
	console.log("using: new XMLHttpRequest()")
	console.log(Http.responseText)
}


console.log("======================== callback  ========================")

console.log("************")
console.log("************")
console.log("************")
console.log("************")
console.log("************")

function getData(callback){
const Http = new XMLHttpRequest()
const url = "https://jsonplaceholder.typicode.com/posts"
Http.open("GET",url)
Http.send()
Http.onreadystatechange = ()=>{
 	callback(Http.responseText)	
}
}

let callback = (datos) =>{
	for(item in  datos){
		console.log(item.id)
	}

}


getData(callback)


















