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

// Release 1: Find a Key-Value Match
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
