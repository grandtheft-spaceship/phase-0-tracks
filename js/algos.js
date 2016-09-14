// Longest word in an Array

// 1. Define a method that takes an array as a parameter
// 2. Iterate through erach element of the array and get each element's length
// 3. Compare the lengths of each element to each other 
// 4. Return the element with the greatest length

var longest = ""

function longestWord(array) {
  for (var index = 0; index < array.length; index ++) {
    if (array[index].length > array[index+1].length) console.log(array[index]);
  }
}

var ourArray = ["cat", "wolf", "rabbit", "chicken"]

longestWord(ourArray)