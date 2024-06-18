const fs = require("fs");
const path = require("path");

// Archivo de salida
const outputFilePath = path.join(__dirname, "open_url_at_once", "urls.txt");

// Archivos a buscar
const filesToSearch = [
  "async-await.js",
  "asynchronous_programming.js",
  "callback_basic.js",
  path.join("data-structure", "stack", "stack.js"),
  path.join("data-structure", "stack", "stack.test.js"),
  "funciones_generadoras.js",
  "promise_basic.js",
  "review.js",
].map((file) => path.join(__dirname, file));

// Función para buscar URLs en un archivo
function findUrlsInFile(filePath) {
  const data = fs.readFileSync(filePath, "utf-8");
  const urlRegex = /(http|https):\/\/[^\s/$.?#].[^\s]*/g;
  return data.match(urlRegex) || [];
}

// Función principal para buscar URLs y actualizarlas en el archivo de salida
function updateUrls() {
  let allUrls = [];

  filesToSearch.forEach((file) => {
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
    existingUrls = fs
      .readFileSync(outputFilePath, "utf-8")
      .split("\n")
      .filter(Boolean);
  }

  // Combinar URLs existentes con nuevas, eliminar duplicados y ordenar
  const combinedUrls = [...new Set([...existingUrls, ...allUrls])].sort();

  // Escribir las URLs actualizadas en el archivo de salida
  fs.writeFileSync(outputFilePath, combinedUrls.join("\n"), "utf-8");
}

// Ejecutar la función principal
updateUrls();
