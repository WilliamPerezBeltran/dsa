// Definimos la función getChildren que toma un objeto y devuelve su propiedad "children"
const getChildren = x => x.children;

// Definimos la función allTheChildren usando map
const allTheChildren = elements => elements.map(getChildren);

// Creamos una estructura de objetos anidada
const data = [
  {
    id: 1,
    children: [
      { id: 2, children: [] },
      { id: 3, children: [] }
    ]
  },
  {
    id: 4,
    children: [
      { id: 5, children: [] },
      { id: 6, children: [] }
    ]
  }
];

// Usamos allTheChildren para obtener los hijos de todos los objetos en data
const childrenNodes = allTheChildren(data);

// childrenNodes ahora contiene una matriz de arrays de objetos hijos
console.log(childrenNodes);

