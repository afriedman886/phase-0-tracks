// STRING REVERSE
// Input: string
// Steps:
    // Loop through the string, print each character (starting with the last and moving toward the first)
    // Combine all characters into one return string
// Return: string printed in reverse order

function reverse(str) {
  var reverseArr = [];
  for (i = (str.length - 1); i >= 0; i--) {
    reverseArr.push(str[i]);
  }
  console.log(reverseArr.join(""));
}

// DRIVER CODE
reverse("hello");

//
//var backwardsAnimal = reverse("elephant");