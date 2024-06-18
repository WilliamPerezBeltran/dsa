//  https://github.com/getify/You-Dont-Know-JS/blob/2nd-ed/get-started/apA.md
//  https://www.sitepoint.com/arrow-functions-javascript/
console.log(
  "========================= functions and arrow functions =========================",
);

function hi() {
  return "what's up";
}
console.log(hi()); // what's up

const h = function () {
  return "what's up";
};
console.log(h()); // what's up

const hh = () => "what's up";
console.log(hh()); // what's up

console.log(
  "========================= implicit return =========================",
);

netflixSeries = [
  {
    title: "The Queens Gambit",
    likes: 3,
  },
  {
    title: "Bridgerton",
    likes: 1,
  },
  {
    title: "After Life",
    likes: 4,
  },
];
orderByLikes = netflixSeries.sort((a, b) => {
  return b.likes - a.likes;
});
console.log(orderByLikes); // what's up

netflixSeries = [
  {
    title: "The Queens Gambit",
    likes: 3,
  },
  {
    title: "Bridgerton",
    likes: 1,
  },
  {
    title: "After Life",
    likes: 4,
  },
];
// implicit return
orderByLikes = netflixSeries.sort((a, b) => b.likes - a.likes);
console.log(orderByLikes);

console.log("========================= consistente =========================");

function greeter(greeting) {
  return function (name) {
    return `${greeting} ${name}`;
  };
}

myGreet = greeter("greeting");
console.log(myGreet("Paul"));

greet = (greeting) => (name) => `${greeting} ${name}`;
p = greet("greeting");
console.log(p("Paul"));

greet = (greeting) => (name) => `${greeting} ${name}`;
p = greet("greeting");
console.log(p("Paul"));

console.log("========================= functions =========================");

netflixSeries = [
  {
    name: "Bridgerton",
    summary:
      "From Shondaland and Creator Chris Van Dusen, Bridgerton follows Daphne Bridgerton (Phoebe Dynevor), the eldest daughter of the powerful Bridgerton...",
  },
  {
    name: "The Queens Gambit",
    summary:
      "Based on the novel by Walter Tevis, the Netflix limited series drama The Queen's Gambit is a coming-of-age story that...",
  },
  {
    name: "After Life",
    summary:
      "Tony (Ricky Gervais) had a perfect life. But after his wife Lisa suddenly dies, Tony changes. After contemplating taking his...",
  },
];

var opps = netflixSeries.map((series) => {
  const container = {};
  container.title = series.name;
  container.summary = series.summary;
  return container;
});

console.log(opps);
console.table(opps);

console.log("========================= functions =========================");

// Uncaught SyntaxError: unexpected token: ':'
seriesList = netflixSeries.map((series) => {
  title: series.name;
});
console.log(seriesList);

// => {return data}
seriesList = netflixSeries.map((series) => {
  return { title: series.name };
});
console.log(seriesList);

// Works fine
seriesList = netflixSeries.map((series) => ({ title: series.name }));
console.log(seriesList);

console.log(
  "========================= get name function =========================",
);

const asdfldfj = function () {};
console.log(asdfldfj.name);

const asdf = () => {};
console.log(asdf.name);
