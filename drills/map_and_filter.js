// Remove Duplicated using filter
var a = [1,2,3,30,17]
var b = [2,30,1,15]
var c = [4,2,1,6,9,99]

function removeDuplicates(arr1, arr2){

  var newArr = arr1.filter(value => arr2.indexOf(value === -1))
    return newArr
  }


//Remove Duplicates with unlimited amount of arrays
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



var example = [1, 2, 3, 4, 1]

var uniqueArray = sourceArray.filter(checkValueInArray){}

function checkValueInArray(value){
  return value < 4
}

// Remove Vowels
var sent = "Testing a String"

function removeVowelsFilter(sentance){
  let vowels = ["a","e","i","o","u"]
  let sentanceAsArray = sentance.split("")
  // let newArr = sentanceAsArray.filter(value => vowels.indexOf(value) === -1)
  let newArr = sentanceAsArray.filter(value => !vowels.includes(value))

  return newArr.join("")
}

console.log(removeVowelsFilter(sent));
