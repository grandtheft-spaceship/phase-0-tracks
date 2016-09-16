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

function Car(make, model, color) {
  this.make = make;
  this.model = model;
  this.color = color;

  this.takeOff = function() {
    console.log("0-60 in 3 seconds!");
  };
}

var newCar = new Car("Honda", "Civic", "white");
console.log(newCar);
newCar.takeOff();

var car = {
  make: "Honda",
  model: "Civic",
  color: "white",
  fullTank: true,
  gasLight: function() {
    if (this.fullTank) {
      console.log("Step on it!");
      } else {
        console.log ("You need gas now.");
      }
  }
}

car.gasLight();