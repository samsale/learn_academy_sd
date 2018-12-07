var test = 'Thi,s is a, tes!t'



function arraymove(arr, fromIndex, toIndex) {
    var element = arr[fromIndex];
    arr.splice(fromIndex, 1);
    arr.splice(toIndex, 0, element);
    return arr
}

function findPunctuation(str){

  var array = str.split(" ")
  let regexStr = /[!,?,,,.,:,;]/gi;
  for (var i=0; i<array.length; i++)
  if(regexStr.test(array[i])){
    positionOfPunctuation = array[i].search(regexStr)
    toArray = array[i].split("")
    var correctedArray = arraymove(toArray,positionOfPunctuation,toArray.length);
    console.log( correctedArray.join(""))
  }else{

    console.log(array[i]);
  }2
  }

console.log(findPunctuation(test))
