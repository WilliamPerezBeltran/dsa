
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








Hoisting es un término para describir que las declaraciones de variables y funciones son desplazadas a la parte superior del scope más cercano, scope global o de función. Esto sucede solamente con las declaraciones y no con las asignaciones. El código permanece igual, solo es una interpretación del motor de JavaScript.























