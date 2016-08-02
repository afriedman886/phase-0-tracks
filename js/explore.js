// STRING REVERSE
// Input: string
// Steps:
    // Loop through the string, print each character (starting with the last and moving toward the first)
    // Combine all characters into one return string
// Return: string printed in reverse order

reverse = function(str) {
  var arr = str.split("")
  for (i = (arr.length - 1); i >= 0; i--) {
    console.log((arr[i]).join(""));}
    //console.log(arr.join(""));

}

// DRIVER CODE
reverse("hello");

//
//var backwardsAnimal = reverse("elephant");