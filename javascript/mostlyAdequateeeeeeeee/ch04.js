console.log("============== currying ===============")

/*
 *
Currying se basa en la idea de que cualquier función que tome 
varios argumentos se puede reescribir como una serie de funciones anidadas 
que toman cada una un argumento y devuelven otra función:

agregar(X, Y, Z) => x + y + z    => funcion normal 
agregar(X, Y, Z) => agregar(x)(y)(z) => funcion currificada 
 *
 * */


const add = x => y => x + y
const increment = add(1)
const addTen = add(10) 



// curry :: ((a, b, ...) -> c) -> a -> b -> ... -> c
function curry(fn) {
  const arity = fn.length;

  return function $curry(...args) {
    if (args.length < arity) {
      return $curry.bind(null, ...args);
    }

    return fn.call(null, ...args);
	}
	
}
const match = curry((what, s) => s.match(what));
const replace = curry((what, replacement, s) => s.replace(what, replacement));
const filter = curry((f, xs) => xs.filter(f));
const map = curry((f, xs) => xs.map(f));


console.log(addTen(2))

	console.log(match);
	console.log();

console.log(match(/r/g, 'hello world')); // [ 'r' ]);
console.log(match(/r/g, 'my r con r con r son tres r hello world')); // [ 'r' ]);

const hasLetterR = match(/r/g)
console.log(hasLetterR('hello world')); // [ 'r' ]);

filter(hasLetterR,["rock and roll","smooth jazz"])
console.log(filter(hasLetterR,["rock and roll","smooth jazz"]));

const removeStringsWitchoutRs = filter(hasLetterR)
removeStringsWitchoutRs(["rock and roll","jungle","whoo","jazz"])
console.log(removeStringsWitchoutRs(["rock and roll","jungle","whoo","jazz"]));
console.log(removeStringsWitchoutRs(["rock and roll","jungle","whoo","jazz"]));
console.log(removeStringsWitchoutRs(["rock and roll","jungle","whoo","jazz","jungle r"]));


//	What's demonstrated here is the ability to "pre-load" a function with an argument or two 
//	in order to receive a new function that remembers those arguments.

const getChildren = x => x.childNodes;
const allTheChildren = map(getChildren);



