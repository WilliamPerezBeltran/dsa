/*

Asynchronous programming

The central part of a computer, the part that carries out the individual steps that make up
out programs, is called the "processor". The programs we have seen so far are things that will keep the processor busy until they have finished their work.
The speed at which something like a loop that maniuplates numbers can be executed depends pretty much entirely on the peed of the processor.

But many programs interact with things outside of the processor. 
For example, they may commynicate over a computer network or request data from 
the hard disk-which is a lot slower than getting it from memory.
When such a thing is happening, it would be a shame to leet the processor sir idle - there might be some other work it could do int he meantime. 
In part, this is handle by your operating system, which will switch the processor between 
multiple running programs. But that does not help when we want a "single" program to 
be able to make progress while it is waiting for a network request.

*/

console.log("====================== callbacks ======================");

/*
Callbacks
One approach to asynchronous programming is to make functions that perform
a slow action take an extra argument, a callback function. The action is started,
and when it finishes, the callback function is called with the result.
*/

setTimeout(() => {
  console.log("waiting 500 miliseconds");
}, 500);

/*

import {bigOak} from "./crow-tech";
bigOak.readStorage("food caches", caches => {
	let firstCache = caches[0];
		bigOak.readStorage(firstCache, info => {
		console.log(info);
	});
});

*/

//basic definition of callback
function doSomething1(parameter, callback) {
  console.log("entro a do somehint 111");
  callback(parameter);
}

function callback(n) {
  console.log(n);
}

doSomething1("hola parametro", callback);

//callback anonimo
let anonimous = function () {
  console.log("callback anonimo");
};
anonimous();

//practical example
function getData(callback) {
  console.log(`entro a getData`);
  setTimeout(() => {
    console.log(`getData Executed `);
    const data = { name: "paul graham", age: 23 };
    callback(data);
  }, 500);
}

function procesarDar(data) {
  console.log(`datos recibidos: ${data}`);
}

getData(procesarDar);

console.log();
console.log();
console.log();

//callbacks anidados

function primeraOperacion(callback) {
  setTimeout(() => {
    console.log("11111 operation");
    callback();
  }, 1000);
}

function segundaOperacion(callback) {
  setTimeout(() => {
    console.log("22222 operation");
    callback();
  }, 1000);
}

function terceraOperacion(callback) {
  setTimeout(() => {
    console.log("33333 operation");
    callback();
  }, 1000);
}

primeraOperacion(() => {
  segundaOperacion(() => {
    terceraOperacion(() => {
      console.log("todas las operaciones completas executadas");
    });
  });
});

//callbacks anidados con parametros

function primeraOperacion_(a = "primera operacion", callback) {
  console.log("primera operacion");
  setTimeout(() => {
    console.log("11111 operation");
    callback();
  }, 1000);
}

function segundaOperacion_(a = "segunda operacion", callback) {
  console.log("segunda operacion");
  setTimeout(() => {
    console.log("22222 operation");
    callback();
  }, 1000);
}

function terceraOperacion_(a = "tercera operacion", callback) {
  console.log("tercera operacion");
  setTimeout(() => {
    console.log("33333 operation");
    callback();
  }, 1000);
}

primeraOperacion_("", () => {
  segundaOperacion_("", () => {
    terceraOperacion_("", () => {
      console.log("todas las operaciones completas executadas");
    });
  });
});
