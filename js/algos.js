// Release 0: Find the Longest Phrase
// create counter to count letters in a word
// create variable to hold longest Phrase
// loop over array by index
  // count letters in each index location
  // compare longestPhrase with each new word
  // keep longestPhrase in variable
//print variable
function longestPhraseFinder(array) {
	var letters = 0;
	var longestPhrase = " ";

	for (var i = 0; i < array.length; i++) {
		if (array[i].length > letters) {
			letters = array[i].length;
			longestPhrase = array[i];
		}
	}
	console.log(longestPhrase);
}

// Release 1: Find a Key-Value Match
// split object into distinct arrays (gets rid of keys and stores only values)
//compare each index of each array
  //return true or false depending if values are a match
function keyValueMatch(object1, object2) {
	var array1 = [];
	var array2 = [];
	for (var prop in object1) {
		var item1 = (object1[prop]);
		array1.push(item1);
	}
	for (prop in object2) {
		var item2 = (object2[prop]);
		array2.push(item2);
	}
	if (array1[0] == array2[0]) {
		console.log("True");
	}
	else if (array1[1] == array2[1]) {
		console.log("True");
	}
	else {
		console.log("False");
	}
}

// Release 2: Generate Random Test Data
// generate random integer
function getRandomInt(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}

// take an integer and use that to set length of word
// pull random letters out of alphabet to create word of n-length
// return word
function randomWord(integer) {
	var text = "";
	var alphabet = "abcdefghijklmnopqrstuvwxyz";
	for (var i = 0; i < integer; i++)
		text += alphabet.charAt(Math.floor(Math.random() * alphabet.length));
	return text;
}

//create empty array
// determine array length based on integer provided
  // use random integer, 1 through 10
// use loop to call randomWord and add to the array
// when loop has reached integer provided, print array
function randomTestData(number) {
	testDataArray = [];
	var arrayLength = number;
	wordLength = getRandomInt(1, 10);
	for (var i = 0; i < arrayLength; i++)
		testDataArray.push(randomWord(getRandomInt(1,10)));
	console.log(testDataArray);
}

// Release 2: Step 2 (add driver code that does the following 10 times: generates an array, prints the array, feeds the array to your "longest word" function, and prints the result)
for (var i = 1; i < 11; i++) {
	randomTestData(i);
	var longestWord = longestPhraseFinder(testDataArray);
}

// Driver code for randomTestData:
//randomTestData(10);
//randomTestData(2);
//randomTestData(3);
//randomTestData(5);

//Driver code for keyValueMatch:
//testObject1 = {name: "Steven", age: 54};
//testObject2 = {name: "Tamir", age: 54};
//testObject3 = {name: "Ann", age: 36};
//testObject4 = {naae: "Ann", affe: 36};
//testObject5 = {name: "Jack", afe: 23};
//testObject6 = {naam: "Jill", age: 21};

//keyValueMatch(testObject1, testObject2);
//keyValueMatch(testObject3, testObject4);
//keyValueMatch(testObject5, testObject6);


// Driver code for longestPhraseFinder:
//testArray = ["long phrase","longest phrase","longer phrase"];
//testArray2 = ["elephant", "horse", "cat"];
//testArray3 = ["this is", "sorta", "a test of length"];
//longestPhraseFinder(testArray);
//longestPhraseFinder(testArray2);
//longestPhraseFinder(testArray3);
