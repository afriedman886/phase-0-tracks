// STRING REVERSE
// Input: string
// Steps:
    // Loop through the string (starting with the last character and moving toward the first)
    // Combine all characters into one return string
// Return: string printed in reverse order

function reverse(str) {
  var reverseString = "";
  for (i = (str.length - 1); i >= 0; i--) {
    reverseString += (str[i]);
  }
  return reverseString;
}

// Reverse function using an array instead of empty string

//function reverse(str) {
//  var reverseArr = [];
//  for (i = (str.length - 1); i >= 0; i--) {
//    reverseArr.push(str[i]);
//  }
//  return (reverseArr.join(""));
//}

// DRIVER CODE
console.log(reverse("hello"));

var backwardsAnimal = reverse("elephant");
console.log(backwardsAnimal);

if ("cat" === "cat") {
  console.log(reverse("cat"));
}
