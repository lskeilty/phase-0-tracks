var colors = ["blue","green", "pink", "purple"]
var names = ["Ed", "Ned", "Ted", "Fred"]

var horses = {};
for (i = 0; i < colors.length; i++) {
  horses[names[i]] = colors[i]
}
console.log(horses);


function Car(color, year, automatic) {
  this.color = color;
  this.year = year;
  this.automatic = automatic;

  this.installEngine = function() { console.log("Engine installed");};
  console.log("CAR ININTIALIZATION COMPLETE");
}

console.log("Let's build a car...");

var anotherCar = new Car("red", 2017, true);
console.log(anotherCar);
anotherCar.installEngine();
console.log("-------")

var yetAnotherCar = new Car("blue", 2017, false);
console.log(yetAnotherCar);
yetAnotherCar.installEngine();
console.log("-------")

var yetAnotherAnotherCar = new Car("blue", 2017, false);
console.log(yetAnotherAnotherCar);
yetAnotherAnotherCar.installEngine();
console.log("-------")