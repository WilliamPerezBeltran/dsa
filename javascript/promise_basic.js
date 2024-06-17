//https://www.javascripttutorial.net/es6/javascript-promises


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

console.log("====================== promise  ======================")  
console.log("==== important template about promise ====")  
/*

const promise = new Promise((resolve,reject)=>{
  // contain an operation 
  // return the state 
  if(success){
    resolve(value)
  }else{
    reject(error)
  }
})

promise 
.then((data)=>{console.log(data)})
.catch((error)=>{console.log(error)})

*/

const miPromesa = new Promise((resolve,reject)=>{
  //hacer algo asincrono 
  let exito = true 
  if(exito){
    resolve("la operacion fue exitosa")
  }else{
    reject("la operacion fue un fracaso")
  }
})

miPromesa
.then((resultado)=>{
  console.log(resultado)  // la operacion fue exitosa
})
.catch((error)=>{
  console.log(error)  // Hubo un error en la operacion 
})


function getUsers() {
  return [
    { username: 'john', email: 'john@test.com' },
    { username: 'jane', email: 'jane@test.com' },
  ];
}

function findUser(username) {
  const users = getUsers()
  //const user =  users.find((user)=>{return user.username === username})
  const user =  users.find((user)=> user.username === username )
  return user
}


console.log(findUser("john"))


//To simulate the delay, you can use the setTimeout() function. For example:

function getUsers_() {
  let users = [];
  setTimeout(() => {
    users = [
      { username: 'john', email: 'john@test.com' },
      { username: 'jane', email: 'jane@test.com' },
    ];
  }, 1000);
  return users;
}

function findUser_(username) {
  const users = getUsers_()
  //const user =  users.find((user)=>{return user.username === username})
  const user =  users.find((user)=> user.username === username )
  return user
}


console.log(findUser_("john")) //undefined

//Using callbacks to deal with an asynchronous operation

console.log("executed operation")

function getUsers__(callback) {
  setTimeout(() => {
    callback([
      { username: 'john', email: 'john@test.com' },
      { username: 'jane', email: 'jane@test.com' },
    ]);
  }, 1000);
}

function findUser__(username, callback) {
   getUsers__((users) => {
    const user = users.find((user) => user.username === username);
    callback(user);
  });
}

findUser__('john', console.log);


// with promise 

function getUsersWithPromise(){
	return	new Promise((resolve,reject)=>{
		setTimeout(()=>{
	    resolve([
 		     { username: 'john', email: 'john@test.com' },
 		     { username: 'jane', email: 'jane@test.com' },
 		   ]);
		},2000)
	})
}

const promise = getUsersWithPromise()
promise.then((data)=>{
	console.log("getUsersWithPromise")
	console.log(data)
})

//promesas total templte 
function getUsersTotal(){
	return new Promise((resolve,reject)=>{
		if(false){
	    resolve([
 		     { username: 'john', email: 'john@test.com' },
 		     { username: 'jane', email: 'jane@test.com' },
 		   ]);
		}else{
			reject("algo salio mal")
		}
	},3000)
}

const newPromise = getUsersTotal()

newPromise
	.then((data)=>{
		console.log(`ole: ${data} `)
	}) 
	.catch((error)=>{
		console.log(`error: ${error} `)
	}) 





















