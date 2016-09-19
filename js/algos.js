// Longest word in an Array

// 1. Define a method that takes an array as a parameter
// 2. Iterate through erach element of the array and get each element's length
// 3. Compare the lengths of each element to each other 
// 4. Return the element with the greatest length

var length = 0;
var longest = "";

function longestWord(array) {
  for (index = 0; index < array.length; index++) {
    if (array[index].length > length) {
      length = array[index].length;
      longest = array[index];
    }
  }
  return longest;
}

var ourArray = ["wolf", "cat","chicken", "rabbit"];

console.log(longestWord(ourArray));


