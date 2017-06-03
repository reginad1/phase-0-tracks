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

//Release 1: Return true or false.  Create a simple function to have items to compare.  Create another function to assess true or false.  if the first key is equal to the second key in a different function, print true.  If the second key is equal to the second key in that function, print true.  Print false if no keys equal each other.

function Boy(name, age, likes_music){
  this.name = name
  this.age = age
  this.likes_music = likes_music
  }

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



//Release 2
//function that takes a number as an argument.  Create an empty array.  While array's length is less than the number, create a word and push that word to the empty array.
//creating a word: create a variable called letters that equals a string of the alphabet.  create a variable with an empty string.  Create a variable with potential length numbers (1 - 10) and create a variable for generating a random number from the array of potential length numbers.   Use the random number that is generated to determine the length of a new word, and produce a string from random indexes in the alphabet string.

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

for (var i=0; i < 10; i++) {
  var lengthNumbers = [1, 2, 3, 4, 5];
  var randomNumber = lengthNumbers[Math.floor(Math.random() * lengthNumbers.length)];
  var x = stringMaker(randomNumber)

  console.log(x)
  console.log(longestWord(x))

}