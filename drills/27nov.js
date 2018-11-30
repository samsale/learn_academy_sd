//write 3 loops (1 for loop, 1 while loop and 1 forEach loop) that iterates through an array and returns the same array with every number mult. by 3.

var arr1 = [3, 8, 20, 4, 2]

//expected output [9, 24, 60, 12, 6]

//for loop

for(let i = 0; i < arr1.length; i++){
  console.log(arr1[i] * 3);
}
//
// //while loop

var counter = 0
while(counter < arr1.length){
  console.log(arr1[counter] * 3);
  counter ++
}
//
// //forEach loop
arr1.forEach(function(value){
  console.log(value * 3);
})

//stretch 1:  Turn each loop into a function.

function forLoopTest(anArray){
  for(let i = 0; i < anArray.length; i++){
    console.log(anArray[i] * 3);
  }
}

forLoopTest(arr1)

function whileLoopTest(anArray){
  var counter = 0
  while(counter < anArray.length){
    console.log(anArray[counter] * 3);
    counter ++
  }
}

whileLoopTest(arr1)

function forEachTest(anArray){
  anArray.forEach(function(value){
    console.log(value * 3);
  })}


forEachTest(arr1)

//stretch 2:  Refactor your function to return a new array instead of mutating the original arry.

function forLoopMutateTest(anArray){
  var newArray = []
  for(let i = 0; i < anArray.length; i++){
    newArray.push(anArray[i] * 3);

  }
return newArray
}

console.log(forLoopMutateTest(arr1));

function whileLoopMutateTest(anArray){
    var counter = 0
    var newArray = []
    while(counter < anArray.length){
      newArray.push(anArray[counter] * 3);
      counter ++
  }
  return newArray
}

console.log(whileLoopMutateTest(arr1))


function forEachMutateTest(anArray){
  var newArray = []
  anArray.forEach(function(value){
     newArray.push(value * 3);
   })
   return newArray
}

console.log(forEachMutateTest(arr1));

// Test git update
