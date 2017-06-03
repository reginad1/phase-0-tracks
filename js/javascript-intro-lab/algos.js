//Release 0: find the longest phase
//create a function to find longest word in the array
function longestWord(array) {

//declare a new variable that will equal the original array sorted from greatest length to smallest length.
sorted = array.sort(function (a, b) {
  return a.length < b.length;
});


//important to sort from greatest to smallest, so that you can always use index 0 to return the longest word without needing to know the length of the array.

console.log(sorted[0])
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


  function Boy(name, age, likes_music){
  this.name = name
  this.age = age
  this.likes_music = likes_music
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