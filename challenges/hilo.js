// Goal
//
// Create a function that plays the following game: The computer picks a secret random integer between 1 and 100 (both inclusive), and repeatedly asks the user for guesses.
// If the user's guess is too high or too low, the computer notifies them of that
// Otherwise, if the user guesses the secret number correctly, the computer displays a winning message and the game is over.
//
function hideDiv(div){
    var x = document.getElementById(div);
    if (x.style.display === "none") {
        x.style.display = "block";
    } else {
        x.style.display = "none";
    }
}

var counter = 0

function createRandomNumber(){
  var randomNumber = Math.floor((Math.random() * 100) + 1);
  console.log(randomNumber);
  return randomNumber
}

function addToCounter(counter){

  counter = counter ++
  console.log(counter);
  return counter


  // return document.getElementById("guesses").innerHTML= "You have had " + counter + " gusses";
}

function hiLoGame(ranNumber){
var newNumber = document.getElementById("guess").value;
      if(newNumber > ranNumber){
        return document.getElementById("guessed").innerHTML= "Guess Lower";
      }else if(newNumber < ranNumber){
        return document.getElementById("guessed").innerHTML= "Guess Higher";
      }else if(newNumber == ranNumber){
        hideDiv('gamearea')
        return document.getElementById("guessed").innerHTML= 'Matched!';

      }
  }


var randomNumber = window.onload = createRandomNumber()
