//RELEASE 0 longest phrase

function longestWord(array){
  if (array[0].length > (array[1].length && array[2].length))
    console.log(array[0]);
  else if (array[1].length > (array[0].length && array[2].length))
    console.log(array[1]);
  else
    console.log(array[2]);
}


//RELEASE 1 find key value matches

function ValueMatch(obj1, obj2) {
  var ValueTrue = false;

  for (var key1 in obj1) {
    console.log(obj1[key1]);
    for(var key2 in obj2){
      if (key1 == key2 && obj1[key1] == obj2[key2]) {
        ValueTrue = true;
      }
    }
  }

  if (ValueTrue === true){
    console.log("true");
    return true;
  } else {
  console.log("false");
    return false;
  }
}


/////RELEASE 2

function randletters(numWords){

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
  return console.log(words);
}


/////DRIVERCODE

//Release0
longestWord(["abdefg", "a", "abc"]);
longestWord(["a", "abc", "abcde"]);
longestWord(["ab", "abcedglf", "abc"]);

//Release1
ValueMatch({name: "Leah", age: 26}, {name: "Matt", age: 70});  // false

//Release2
for(var i = 0; i < 10; i++ ){//run 10 times
  myrandletters = randletters(3);
}