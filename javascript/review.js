
console.log("again")

tipos de variables en javascript
======================== datos primitivos ========================

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



======================== funciones ========================
declaración de una función 

function nombreDeLaFunction(){
	//código a ejecutar
}

function saludar(){
	console.log("hola")
}


let nombreDeLafuncion = function saludar(){
	console.log("hola")
}
nombreDeLafunción() 

let nombre = ()=>{
	console.log("hola arrow function")
}

nombre()

setTimeout(function(){
	console.log("funcion anonima")
});

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




======================== declaracion de variables  ========================


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
	
	var x = 10
 	if(true){
		var x = 20  //misma variable	
	}
	console.log(x) // x => 20

2. "let"
	* Tiene alcance de bloque, es decir solo es accesible dentro del bloque donde se declara
	* Puede ser reasignada pero no redeclarada en el mismo ámbito 
	* No soporto hoisting de la misma manera que var
	let xx = 10
	if(true){
		let xx = 20 //variable diferente	
		console.log(xx) // xx => 20
	}
	console.log(xx) // xx =>10
	

1. "const"
	* Tiene alcance de bloque, es decir solo es accesible dentro del bloque donde se declara 
	* Debe ser inicializada al momento de su declaración y no puede ser reasingnada.
	* Las propiedades de objetos y elementos de arrays declaradso con "const" pueden ser 
		modificadso, pero la referencia no puede cambiar.
	const z = 10
	// z = 20 Error: assignment to consta variable.
	const obj = {a:1}
	obj.a = 2 //valido
	console.log(obj.a) // 2 











