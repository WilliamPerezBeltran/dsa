console.log("================== memoize ==================")

const memoize = (f)=>{
	const cache = {}
	return (...args)=>{
		const argStr = JSON.stringify(args)
		cache[argStr] = cache[argStr] || f(...args)
		return cache[argStr]
	}
}

const squareNumber_ = memoize(x => x*x)
console.log(squareNumber_(4))
console.log(squareNumber_(4))
console.log(squareNumber_(5))
console.log(squareNumber_(5))
console.log(squareNumber_(5))


/*
const memoize = (f)=>{
	const cache = {}
	return (...args)=>{
		
cache[argStr] = cache[argStr] || f(...args)

                si este valor            
cache[argStr] = existe se utilizara || si no existe si utiliza f(...args) 
								valor cache[argStr]

cache[argStr]=(expresionA || expresionB) => falsy retornara el valor a la derecha (expresionB)


cache[argStr]=(expresionA || expresionB) => truly retornara el valor a la izquierda (expresionA)
	}
}
 * */

console.log("================== ...args ==================")

const result = (...args)=>{
		console.log(`args: ${args}`)
		console.log(...args)
	}
console.log(result(1,2,3,4,5))
console.log(result([1,2,3,4,5]))

/*
El cerebro es increible guarda emociones, escondidas por mucho tiempo y salen a flote 
por algun insentivo que las ejecuta. La música es una de ellas, las cuales genera un 
placer único que solo lo puede vivir el que lo siente.
 * */

console.log("================== myMemoize ==================")
const myMemoize= (f)=>{
	const cache = {}
	return(...args)=>{
		argString = JSON.stringify(args)
		console.log(argString)
		console.log(f(...args))
		console.log(cache[argString])
		cache[argString]= cache[argString] || f(...args)
		return cache[argString]
	}
}
const ff = myMemoize(x =>x*x) 
console.log("===")
console.log( ff(2))
console.log("")
console.log("")
console.log( ff(6))
console.log("")
console.log("")
console.log( ff(8))
console.log("")
console.log("")
console.log( ff(10))
console.log("")
console.log("")
console.log( ff(2))
console.log("")
console.log("")
console.log( ff(2))
console.log("")
console.log("")
console.log( ff(2))
console.log("")
console.log("")
console.log( ff(2))
console.log("")
console.log("")
