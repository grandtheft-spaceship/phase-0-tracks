var colors = ["blue", "red", "green", "black"];

var names = ["Penny", "Daisy", "Harry", "Potter"];

colors.push("brown");
names.push("George");

console.log(colors);
console.log(names);

var horses = {};

for (var x = 0; x < names.length; x++) {
  horses[names[x]] = colors[x];
}

console.log(horses);