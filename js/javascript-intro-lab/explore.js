//Function takes a string and evaluate the letter at each index of the string.

function reverseWord(word) {

var newString = "";

for (var i = word.length - 1; i >= 0; i--) {
  newString += word[i];
}

return newString;
}

reverseWord('hello');

var anotherString = reverseWord('goodbye');

if (1 == 1){
  console.log(reverseWord('yasqueen'));
}