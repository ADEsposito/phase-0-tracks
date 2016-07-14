// create function that takes a word as a parameter
  // within function, create a variable that will hold the letters as they come back from the loop
  // loop through each letter of word backwards
    // store each letter in new variable
  // close loop
  // print new variable (which contains all letters of original word, but in reverse order)
// close function

function reverseWord(string) {
	var word = '';
	for (var i = string.length - 1; i >= 0; i--) {
		word += (string[i]);
	}
	return word;
}

reverseHello = reverseWord("hello");
if (reverseHello.length > 1) {
		console.log(reverseHello);
	} else {
		console.log("Sorry, can't reverse a one letter word.");
	}
