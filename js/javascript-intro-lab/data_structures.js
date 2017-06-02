// var colors = ["iridescent purple", "lilac", "green with sparkles", "summer tomato red" ];

// var horses = ["Jill", "Jerry", "Java", "Jordach"];

// colors.push("orange yellow tie dye")

// horses.push("Jamboree")

// console.log(horses)

// colorful_horses = []

// for (var i = 0; i < horses.length; i++){
//   // console.log(horses[i]);
//   // console.log(colors[i]);
//   colorful_horses[horses[i]] = colors[i];
// }

// console.log(colorful_horses)


function Car(model, year, isFastCar) {

console.log("Our car:", this);


this.model = model
this.year = year
this.isFastCar = isFastCar;

this.sound = function() { console.log("Vroom"); };

}

var oneCar = new Car("Sentra", 2014, false);
console.log("The car makes this sound...");
oneCar.sound();
console.log(oneCar);

var anotherCar = new Car("Jeep", 2017, true);
anotherCar.sound();
console.log(anotherCar);
