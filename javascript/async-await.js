
//async declara una funcion asincrona 
console.log("============ diferent example =========")
async function miFuntion(){
	return "hola"
}

miFuntion()
.then((data)=>console.log(data))

console.log("============ diferent example =========")
// 'await' se usa para esperar a que una promesa se resuelva.
// solo se pueden utilizar dentro de funciones declaradas con 'async' 


function promesa(){
	new Promise((resolve,reject)=>{
		try{
			setTimeout(()=>{
				resolve("se resolvio la promesa")
			},2000)
		}catch(error){
			reject("paso algun error")
			throw new Error(`new error: ${error}`)
		}
	})
}

async function funcionAsincrona(){
	console.log("esperando la promersa ")
	const resultado = await promesa()
	console.log(resultado)
	console.log("promesa resuelta ")
}
 funcionAsincrona()


console.log("============ template  =========")
/*
function promesa(){
		do something asynchronously
}

async function contenedor(){
	const resultado = await promesa()
	console.log(resultado)
}

*/
