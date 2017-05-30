//create a function that takes a string as a parameter.
//make the starting point the last letter in the string. use string length minus 1
//as long as the loop is greater than or equal to 0, the loop will execute
//decrease by 1 after each iteration of the loop

newString = " ";

function reverse(str){

  for (var i = str.length - 1; i >= 0; i--) {
        newString += str[i];
  }
}

console.log(reverse("Hello"));

{if (1 < 2 === true)
  console.log(newString);
}