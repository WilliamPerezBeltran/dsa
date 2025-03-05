console.log("================== Chapter 2: First Class Functions ==================" )

//first class => we mean thery are just like normal class

/*
var getSErverStuff = function(callback){
	return ajaxCall(function(json){
		return callback(json)
	})
}


var getSErverStuff = (callback)=>{
	return ajaxcall((json)=>callback(json))
}


var getSErverStuff = (callback)=>ajaxCall(json=>callback(json))
 getSErverStuff = (callBack)=>ajaxCall(callBack)
 getSErverStuff = ajaxCall


ajaxCall = (json)=>callback(json)

var getSErverStuff = function(callback){
	return ajaxCall(function(json){
		return callback(json)
	})
}
ajaxCall(callback)

ajaxCall = (x)=>`from ajaCall${x}`
callBack = (x)=>`from callback${x}`

var result =()=>{
}

console.log( result) 
*/

ajaxCall = (x) => `from ajaxCall---${x}`;
callBack = (x) => `from callback--${x}`;

var getServerStuff = ajaxCall;
console.log(getServerStuff(2));
//var getServerStuff = function(callback){
//	return ajaxCall(function(json){
//		return callback(json)
//	})
//}

//var getServerStuff = (callback)=>ajaxCall((json)=> callback(json))
//var getServerStuff = (callback)=>ajaxCall(callback)
//var getServerStuff = ajaxCall

var getServerStuff = (callback) => ajaxCall((json) => callback(json));

console.log(
  getServerStuff((x) => {
    console.log(x);
  }),
);

console.log("=============== con callback sin factorizar =============== ");
function fetchItemsFromServer(callback) {
  setTimeout(() => {
    const items = ["item1", "item2", "item3"]; // Simula datos del servidor
    callback(items);
  }, 1000);
}

function getItems(callback) {
  fetchItemsFromServer(function (items) {
    callback(items);
  });
}

// Uso
getItems(function (result) {
  console.log("version sin factorizar");
  console.log(result); // ['item1', 'item2', 'item3']
});

/*
 * version arrow function 
getItems((result)=> console.log(result)) // ['item1', 'item2', 'item3']
*/
console.log("=============== codigo factorizado  =============== ");

function fetchItemsFromServer(callback) {
  setTimeout(() => {
    const items = ["item1", "item2", "item3"]; // Simula datos del servidor
    callback(items);
  }, 1000);
}

var getItems = fetchItemsFromServer;

/*
 tengo la variable getItems que tiene guardada la función fetchItemsFromServe
 solo es pasarle el callback en este caso la funcion anonimo (result)=> console.log(result)
*/

// Uso
getItems(function (result) {
  console.log("version factorizada");
  console.log(result); // ['item1', 'item2', 'item3']
});

/*
 * version arrow function
	
	getItems((result)=>console.log(result)) // ['item1', 'item2', 'item3']
*/
