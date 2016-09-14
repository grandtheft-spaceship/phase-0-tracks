// Method: String Reverse
// 1. Define an empty string
// 2. Define reverse method that takes in 1 parameter
// 2. Define an empty string
// 3. Split the string into its individual characters and their corresponding indices
// 4. Starting with the largest index, push the corresponding character into the empty string
// 5. Return the reversed-string 

var reversed = "";

function reverseString(string) {
  for (var reverseIndex = string.length; reverseIndex > 0; reverseIndex--) {
    reversed = reversed + string[reverseIndex-1];
  }
  return reversed
}

var reverseStore = reverseString("hello");

console.log(reverseStore);

