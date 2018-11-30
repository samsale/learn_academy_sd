// Write an if/else statement that considers two variables (numbers) and returns/logs the higher number.  Have “catch all” statement that takes care of numbers that are equal.

var firstNumber = 11
var secondNumber = 20

function higherNumber(num1, num2){
  if(num1 > num2){
    return num1 + " (num1) is larger than number two which is " + num2
  }else if(num2 > num1){
    return num2 + " (num2) is larger than number one which is " + num1
  }else if(num2 === num1){
    return (num1 + " is equal to " + num2)
  }else {
    return "Error"
  }
}

console.log(higherNumber(firstNumber,secondNumber));



// Start w/ and empty array
// Push 4 names into the array
// Start another empty array
// Push 4 names into that array
// Combine the two arrays into a new array without changing the original array

var arr1 = []
arr1.push('San Diego', 'LA', 'London', 'Paris')

var arr2 = []
arr2.push('Red', 'Yellow', 'Pink', 'Blue')

var arr3 = arr1.concat(arr2)
console.log(arr3)
