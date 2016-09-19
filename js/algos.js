// RELEASE 1: Find a Key-Value Match

// 1. Define a method that takes two objects and checks to see if the objects share at least one key-value pair
// 2. Method will return true if there is a match; false if there is not match

var result = true;

function matchingPair(object1, object2) {
  keys1 = Object.keys(object1);
  keys2 = Object.keys(object2);

  for (index = 0; index < keys1.length; index++) {
    if (keys1[index] == keys2[index] && object1[keys1[index]] == object2[keys2[index]]) {
      result = true;
    } else {
      result = false;
    }
  }
  console.log(result);
}

var cash = {ones: 5, fives: 2, tens: 1, twenties: 3, hundreds: 1};
var pockets = {chapstick: 1, wallet: 1, keys: 5, pens: 2, hundreds: 1};
var backpack = {books: 3, devices: 1, pencils: 2, notebooks: 3, binders: 1}

matchingPair(cash, pockets);
matchingPair(backpack, cash);







// RELEASE 0: Longest word in an Array

// 1. Define a method that takes an array as a parameter
// 2. Iterate through erach element of the array and get each element's length
// 3. Compare the lengths of each element to each other 
// 4. Return the element with the greatest length

// var length = 0;
// var longest = "";

// function longestWord(array) {
//   for (index = 0; index < array.length; index++) {
//     if (array[index].length > length) {
//       length = array[index].length;
//       longest = array[index];
//     }
//   }
//   return longest;
// }

// var ourArray = ["wolf", "cat","chicken", "rabbit"];

// console.log(longestWord(ourArray));


