class Flock {
  constructor(glus) {
    this.glus = glus;
  }

  cojoin(n) {
    this.glus = this.glus + n.glus;
    return this;
  }

  breed(n) {
    this.glus = this.glus * n.glus;
    return this;
  }
}

const a = new Flock(4);
const b = new Flock(2);
const c = new Flock(0);
const result = a.cojoin(c).breed(c).cojoin(a.breed(b)).glus;

const add = (x, y) => x + y;
const multiply = (x, y) => x * y;
const x = 4;
const y = 2;
const z = 0;
const reslt = add(multiply(y, add(x, z)), multiply(x, y));
console.log(reslt); // 16

/*
  associative    => (a+b)+c = a+(b+c)
  
	commutative    =>  x + y = y + x
  							     x * y = y * x
  
	identity       => a + 0 = a || a * 1 = a
  
	distributive   => a*(b+c) = (a*b)+(a*c)
*/

/*
	associative
	commutative
	identity
	distributive
*/

/*
	associative con la relación de agrupación
	En la suma el orden en que se agrupan los números no afecta
	el resultado: (a+b)+c = a+(b+c)
*/
console.log(add(add(x, y), z) === add(x, add(y, z))); //==> true

/* Commutative:
 * la propiedad conmutativa quiere decir que "el orden de los factores no altera el producto".
 * Por ejemplo cuando se dice los datos se conmutan quiere decir qué cambian los operandos
 * en una operacion. Quire decir los items en las operaciones se cambiar pero que el resultado
 * sigue siendo igual.
 * En matematicas el término "conmutar" se refiere al cambio de posición de los operandos
 * en una operación.
 * La propiedad conmutativa de una operación matemática indica que el resultado de la
 * operación no cambia cuando se permutan (o intercambian) los operandos.
 * Ejemplo
 * 2 + 5 = 5 + 2
 * 2 * 1 = 2 * 1
 *
 */
console.log(add(x, y) === add(y, x)); //==> true

/* Identity:
 La necesidad de un elemento neutro (o identidad) que no altere el valor de un elemento 
 bajo una operación escífica. Por ejemplo, 0 (zero) es el elemento identidad para la 
 suma porque a + 0 = a y 1 es el elemento identidad para la multiplicacion porque a * 1 = a.
 La necesidad de esta fue facilitar la definición de estructuras algebraicas y 
 permite la existencia de inversos, lo cual es crucial enla teoría de grupos, 
 anillos y campos
 
 */
console.log(add(x, 0) === x); //==> true

/* 
	 Distributive:
 * Surge de la interación de la suma y el producto de los números.
 * a*(b+c) = (a*b)+(a*c)
 * Permite la expansión o la simplificación de expresiones algebraicas
 */
console.log(multiply(x, add(y, z)) === add(multiply(x, y), multiply(x, z))); //==> true

console.log(add(add(a, b), z) === add(a, add(b, z))); //==> true
console.log(add(a, b) === add(b, a)); //==> true
console.log(add(a, 0) === a); //==> true
console.log(multiply(a, add(b, z)) === add(multiply(a, b), multiply(a, z))); //==> true
