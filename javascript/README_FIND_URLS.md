tengo esta estructura de carpetas

├── open_url_at_once
│   ├── open_url_at_once.sh
│   └── urls.txt
├── async-await.js
├── asynchronous_programming.js
├── callback_basic.js
├── node_modules
├── data data
├── data-structure
│   └── stack
│   ├── stack.js
│   └── stack.test.js
├── funciones_generadoras.js
├── package.json
├── package-lock.json
├── promise_basic.js
├── README.md
└── review.js

quiero buscar todas las urls en los archivos siguientes:

├── async-await.js
├── asynchronous_programming.js
├── callback_basic.js
├── data-structure
├── funciones_generadoras.js
├── promise_basic.js
└── review.js

Y las url que encuentre las guarde en open_url_at_once en urls. txt Pero no que borre el archivo si no que lo actualize
con mas urls que encuentre. Node js

Para buscar URLs en los archivos específicos que mencionaste y actualizar el archivo urls.txt en open_url_at_once sin borrar su contenido, puedes usar el siguiente script de Node.js.

Primero, crea un archivo find_urls.js con el siguiente contenido:

const fs = require('fs');
const path = require('path');

// Archivo de salida
const outputFilePath = path.join(__dirname, 'open_url_at_once', 'urls.txt');

// Archivos a buscar
const filesToSearch = [
    'async-await.js',
    'asynchronous_programming.js',
    'callback_basic.js',
    path.join('data-structure', 'stack', 'stack.js'),
    path.join('data-structure', 'stack', 'stack.test.js'),
    'funciones_generadoras.js',
    'promise_basic.js',
    'review.js'
].map(file => path.join(__dirname, file));

// Función para buscar URLs en un archivo
function findUrlsInFile(filePath) {
    const data = fs.readFileSync(filePath, 'utf-8');
    const urlRegex = /(http|https):\/\/[^\s/$.?#].[^\s]*/g;
    return data.match(urlRegex) || [];
}

// Función principal para buscar URLs y actualizarlas en el archivo de salida
function updateUrls() {
    let allUrls = [];

    filesToSearch.forEach(file => {
        if (fs.existsSync(file)) {
            const urls = findUrlsInFile(file);
            allUrls = allUrls.concat(urls);
        }
    });

    // Eliminar duplicados y ordenar
    allUrls = [...new Set(allUrls)].sort();

    // Leer URLs existentes en el archivo de salida
    let existingUrls = [];
    if (fs.existsSync(outputFilePath)) {
        existingUrls = fs.readFileSync(outputFilePath, 'utf-8').split('\n').filter(Boolean);
    }

    // Combinar URLs existentes con nuevas, eliminar duplicados y ordenar
    const combinedUrls = [...new Set([...existingUrls, ...allUrls])].sort();

    // Escribir las URLs actualizadas en el archivo de salida
    fs.writeFileSync(outputFilePath, combinedUrls.join('\n'), 'utf-8');
}

// Ejecutar la función principal
updateUrls();

Explicación del script:

1. Definir el archivo de salida: La ruta del archivo urls.txt en la carpeta open_url_at_once se define como outputFilePath.

2. Definir los archivos a buscar: La lista filesToSearch contiene las rutas relativas de los archivos en los que se buscarán las URLs.

3. Buscar URLs en un archivo: La función findUrlsInFile utiliza una expresión regular para encontrar todas las URLs en un archivo.

4. Actualizar el archivo de salida: La función updateUrls busca URLs en todos los archivos especificados en filesToSearch, elimina duplicados, lee las URLs existentes en el archivo urls.txt, combina las URLs nuevas con las existentes, elimina duplicados nuevamente, y finalmente escribe las URLs actualizadas en el archivo urls.txt.

Ejecución del script:
Guarda este script en un archivo llamado find_urls.js y ejecútalo con Node.js:

====>>    node find_urls.js
Esto actualizará el archivo urls.txt en la carpeta open_url_at_once con las nuevas URLs encontradas en los archivos especificados.








