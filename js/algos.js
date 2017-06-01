//RELEASE 0 longest phrase

function longestWord(wordArray){//array = parameter
  var longWord = ""; //longWord empty string variable

  for (var i = 0; i < wordArray.length; i++){ // loop thru array using for, setting variable i to 0, and i less than our arguments length, adding one to the variable
    var temp = wordArray[i];//assign temp variable to an element in array
    if (temp.length > longWord.length){ //if element length greater than current largest, replace current largest with element
      longWord = temp;
    }
  }
  return longWord;//returns longest word
}


//RELEASE 1 find key value matches

function ValueMatch(obj1, obj2) { //pass in two objects to compare
  var ValueTrue = false; //set the intial value of a variable to false

  for (var key1 in obj1) { //using for/in loop take the key frm object 1 (name&age)
    for(var key2 in obj2){ //using for/in loop take the keys frm object 2
      if (key1 == key2 && obj1[key1] == obj2[key2]) { //if keys in object 1 are equal to the keys in object two AND if the values of object 1 are equal to the values in object 2, then valuetrue variable equals true
        ValueTrue = true;
      }
    }
  }

  if (ValueTrue === true){ //if our valuetrue var is true print to console 'true'
    console.log("true");
    return true;
  } else {
  console.log("false");//if our valuetrue var is false, print 'false' to console
    return false;
  }
}


/////RELEASE 2

function randLetters(numWords){
  randLettersNum = numWords;
  var words = []; //set an empty array for the random words
  strAlphabet = "abcdefghijklmnopqrstuvwxyz"; //set the string of avail. ltrs
  for (var i = 0; i < numWords; i++){//starting at 0, i being less than the argument integer being passed in, increasing variable by 1
      letters = "";//set letters to a string
      wordSize = Math.floor((Math.random() * 10) + 1);//random number 1-10
      for (var j = 0; j < wordSize; j++){//sets the length of the random word from the random number above
          letterIndex = Math.floor(Math.random() * 26);//rand ltr 1-26 for the index of our avail ltrs
          letters += strAlphabet[letterIndex];
      }
      words.push(letters);//push the letters into our words array
    }
  return words;
}


/////DRIVERCODE

//Release0
//var wordArray = ["abc", "abcde", "abcdef"];
//var theLongestWord = longestWord(wordArray);
//console.log(theLongestWord);

//Release1
ValueMatch({name: "Leah", age: 26}, {name: "Matt", age: 70});  // false

//Release2
for(var i = 0; i < 10; i++ ){ //from 0-10 times, make an array with 3 words of random letters
myRandLetters = randLetters(3);

var longestRandWord = longestWord(myRandLetters);//set the variable for longest random word equal to the function longestword with parameter of random letters
console.log("The longest Random Word is:" + longestRandWord);
console.log('\n');

}
