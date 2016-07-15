// Release 0: Find the Longest Phrase
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

testArray = ["long phrase","longest phrase","longer phrase"];
testArray2 = ["elephant", "horse", "cat"];
testArray3 = ["this is", "sorta", "a test of length"];
longestPhraseFinder(testArray);
longestPhraseFinder(testArray2);
longestPhraseFinder(testArray3);
