//Release 0: find the longest phase
//create a function to find longest word in the array
//declare a new variable that will equal the original array sorted from greatest length to smallest length.
//important to sort from greatest to smallest, so that you can always use index 0 to return the longest word without needing to know the length of the array.

function longestWord(array) {

sorted = array.sort(function (a, b) {
  return a.length < b.length;
});

console.log(sorted[0])
}

//Release 1: Return
function trueorFalse(x, y) {


if (x.name == y.name) {
  console.log("true");
} else if (x.age == y.age) {
  console.log("true");
} else if (x.likes_music == y.likes_music) {
  console.log("true");
} else {
  console.log("false");
}
}


  function Boy(name, age, likes_music){
  this.name = name
  this.age = age
  this.likes_music = likes_music
  }

//Release 2
//function that takes a number.  Use that number to define the length of an array.  For each item in that array replace with a string of various lengths with any letters.

function stringMaker(number) {
this.number = number;
var randomArray = [];
do {
var lengthNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
var randomNumber = lengthNumbers[Math.floor(Math.random() * lengthNumbers.length)];
// console.log(randomNumber)

var letters = "abcdefghijklmnopqrstuvwxyz";
var newWord = "";

for( var i=0; i<randomNumber; i++)
  newWord += letters.charAt(Math.floor(Math.random() * randomNumber));

randomArray.push(newWord);
}
while (randomArray.length < number);

return randomArray;
}



//test Release 0
longestWord(["banana", "mango", "coconut", "kiwi", "blackberry"])
longestWord(["water", "H2O", "kombucha", "coconut water"])

//test Release 1
oneBoy = new Boy("Jeremy", 25, true)
anotherBoy = new Boy("David", 24, true)
twoBoy = new Boy("Devan", 19, false)

trueorFalse(oneBoy, anotherBoy)
trueorFalse(oneBoy, twoBoy)

//test Release 2
console.log(stringMaker(3))