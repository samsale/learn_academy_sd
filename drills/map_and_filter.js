// // Remove Duplicated using filter
var a = [1,2,3,30,17]
var b = [2,30,1,15]
var c = [4,2,1,6,9,99]

function removeDuplicates(arr1, arr2){

  var newArr = arr1.filter(value => arr2.indexOf(value === -1))
    return newArr
  }

//
// //Remove Duplicates with unlimited amount of arrays

function checkValueInArray(...theArrays){
  var flattenedArray = [].concat.apply([], theArrays);
  newArray = []
  flattenedArray.forEach((value) =>{
    if(!newArray.includes(value)){
      newArray.push(value)
    }
  })
  return newArray
}
//
//
//
var example = [1, 2, 3, 4, 1]

// // Remove Vowels
var sent = "Testing a String"

function removeVowelsFilter(sentance){
  let vowels = ["a","e","i","o","u"]
  let sentanceAsArray = sentance.split("")
  // let newArr = sentanceAsArray.filter(value => vowels.indexOf(value) === -1)
  let newArr = sentanceAsArray.filter(value => !vowels.includes(value))

  return newArr.join("")
}

console.log(removeVowelsFilter(sent));


//Using a function with filter or map. If you use map, it leaves null in values that are filter out
function testInFilter(value){
    return value < 3
  }


var newOne = example.filter(testInFilter)
console.log(newOne);



// Testing for unique values in an array using indexOf

var example2 = [7, 9, 1, 4, 1, 3, 4, 9]

var noDuplicates = example2.filter((value, index, sourceArray) => index == sourceArray.indexOf(value))

var evens = example2.filter((value) => !(value % 2)|| (value === 3))
console.log(evens);


// Number Index  IndexOf Unique
// 7       0       0       Y
// 9       1       1       Y
// 1       2       2       Y
// 4       3       3       Y
// 1       4       2       N
// 3       5       5       Y
// 4       6       6       Y
// 9       7       1       N





var people = [{firstName: "Alan", lastName: "Grant"}, {firstName: "Ellie", lastName: "Sattler"}, {firstName: "Ian", lastName: "Malcolm"}]

// var { firstName, lastName } = people

var newPeople = people.map(x => {
  //Assing values to x variable
  var { lastName, firstName} = x
  return {
    firstName: firstName,
    lastName: lastName,
    fullName: `${firstName} ${lastName}`
  }
})

console.log(newPeople);
