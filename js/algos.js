// Release 0

// Write a function that takes an array of words or phrases and returns the longest word or phrase in the array

// Input: array
// Steps:
    // Create a variable "longestWord" and assign it the value of the first array item
    // Loop through array
      // Create conditional for remaining array values
      // IF item's length is greater than longestWord's length, then replace value of longestWord with that array item
// Output: longestWord

function longest(arr) {
  var longestWord = arr[0];
  for (var i=0; i<arr.length; i++) {
    if (arr[i].length > longestWord.length) {
      longestWord = arr[i];
    }
  }
  return longestWord;
}

// Release 1

// Write a function that takes two objects and checks to see if the objects share at least one key-value pair.

// Input: Two objects
// Steps:
  // Loop through first object to compare each key-value pair
    // Nested Loop: loop though second object so that each key-value pair is compared to each
// Output: True or False


// Release 2

// Write a function that takes an integer for length, and builds and returns an array of strings of the given length.

// Input: integer
// Steps:
  // Initialize an empty array (randWords)
  // Create a LOOP that will run {integer} times
    // Generate random number from 1-10
    // Create a LOOP that will run {rand number 1-10} times
      // Initialize empty string (newWord = "")
      // Create variable alphabet = "abcdefghijklmnopqrstuvwxyz"
      // Generate a random number from 0-25
      // Use random number as index to select letter from alphabet string
      // Add this letter to newWord
    // Add newWord to randWords array
// Output: randWords array (array length = integer input; randomly generated words: min length = 1, max length = 10)

function randWordGenerator(n) {
  var randWords = [];
  for (var i=1; i<=n; i++) {
    var wordLength = randNum(1,10);
    var newWord = "";
    for (var x=1; x<=wordLength; x++) {
      newWord += randAlpha();
    }
    randWords.push(newWord);
  }
  return randWords;
}

function randAlpha() {
  var alphabet = "abcdefghijklmnopqrstuvwxyz";
  var alphaIndex = randNum(0,25);
  return alphabet.charAt(alphaIndex);
}

function randNum(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min + 1)) + min;
}


// Driver Code

var fruit = ["apple", "orange", "banana", "watermelon"];
var cities = ["Chicago", "Washington, D.C.", "Los Angeles", "Boston"]

console.log(longest(fruit))
console.log(longest(cities))


//Add some driver code that tests both outcomes of your function.


// Add driver code that does the following 10 times: generates an array, prints the array, feeds the array to your "longest word" function, and prints the result.

for (var i=1; i<=10; i++) {
  var array = randWordGenerator(5);
  console.log(array);
  console.log("Longest word: " + longest(array));
}
